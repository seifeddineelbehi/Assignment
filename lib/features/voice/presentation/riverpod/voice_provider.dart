import 'dart:async';

import 'package:another_telephony/telephony.dart';
import 'package:assignment/features/voice/presentation/riverpod/voice_state.dart';
import 'package:flutter/services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:phone_state/phone_state.dart';

backgroundCallHandler(String phone) async {
  // Handle background message
  Telephony.backgroundInstance.dialPhoneNumber(phone);
}

final voiceProvider = StateNotifierProvider<VoiceNotifier, VoiceState>((ref) {
  return VoiceNotifier();
});

class VoiceNotifier extends StateNotifier<VoiceState> {
  VoiceNotifier() : super(const VoiceState()) {
    fillKpis();
  }

  final Telephony telephony = Telephony.instance;
  static const platform = MethodChannel('com.rakuten.dataUsage');
  Timer? _callTimer;
  int _remainingSeconds = 0;
  Timer? myTimer;
  bool callEndedByTimer = false;

  Future<void> fillKpis() async {
    final serviceState = await telephony.serviceState;
    state = state.copyWith(serviceState: serviceState.name);
  }

  Future<void> makeCall(String phoneNumber, int durationMins) async {
    state = state.copyWith(
      callDuration: '0/${durationMins} mins',
      number: phoneNumber,
      numberOfMinutes: durationMins.toString(),
    );

    _remainingSeconds = durationMins * 60;

    // Start a periodic timer to update the call duration every second
    _callTimer?.cancel();
    _callTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_remainingSeconds > 0) {
        _remainingSeconds -= 1;
        int mins = _remainingSeconds ~/ 60;
        int secs = _remainingSeconds % 60;
        state = state.copyWith(
          callDuration:
              '${durationMins - mins - (secs > 0 ? 1 : 0)}:${secs.toString().padLeft(2, '0')}/${durationMins} mins',
        );
      } else {
        _callTimer?.cancel();
      }
    });

    try {
      telephony.dialPhoneNumber(phoneNumber);
      // Listen to call state changes to update KPIs accordingly
      PhoneState.stream.listen((status) {
        if (status.status == PhoneStateStatus.CALL_STARTED) {
          print("Call started");
        } else if (status.status == PhoneStateStatus.CALL_ENDED) {
          print("Call ended");

          if (!callEndedByTimer) {
            myTimer?.cancel();
            _callTimer?.cancel();

            int elapsedSeconds = durationMins * 60 - _remainingSeconds;
            int mins = elapsedSeconds ~/ 60;
            int secs = elapsedSeconds % 60;
            state = state.copyWith(
              callDuration:
                  '$mins:${secs.toString().padLeft(2, '0')}/$durationMins mins',
              terminationReason: 'Hung Up',
            );
          }
        } else if (status.status == PhoneStateStatus.NOTHING) {
          print("No ongoing call");
        }
      });
      // Start a timer to automatically end the call after the set duration
      myTimer = Timer(Duration(minutes: durationMins), () async {
        callEndedByTimer = true;
        await platform.invokeMethod('triggerEndCall');
        _callTimer?.cancel();
        state = state.copyWith(
          callDuration: '$durationMins/$durationMins mins',
          terminationReason: 'Duration Completed',
        );
      });
    } catch (e) {
      state = state.copyWith(terminationReason: 'Error Occurred');
      _callTimer?.cancel();
    }
  }
}
