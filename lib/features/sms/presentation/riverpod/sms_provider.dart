import 'dart:async';

import 'package:another_telephony/telephony.dart';
import 'package:assignment/features/sms/presentation/riverpod/sms_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final smsProvider = StateNotifierProvider<SmsNotifier, SmsState>((ref) {
  return SmsNotifier();
});

class SmsNotifier extends StateNotifier<SmsState> {
  SmsNotifier() : super(const SmsState()) {
    fillKpis();
  }

  final Telephony telephony = Telephony.instance;

  Future<void> fillKpis() async {
    try {
      final simState = await telephony.simState;
      final isRoaming = await telephony.isNetworkRoaming;
      final networkOperator = await telephony.networkOperatorName;
      final List<SignalStrength> strengths = await telephony.signalStrengths;

      final bestSignal = strengths.reduce(
        (a, b) =>
            _signalStrengthPriority(a) > _signalStrengthPriority(b) ? a : b,
      );

      state = state.copyWith(
        simState: simState.name,
        roaming: (isRoaming ?? false) ? 'Yes' : 'No',
        networkOperator: networkOperator ?? 'Unknown',
        qualityOfService: _mapSignalStrengthToQoS(bestSignal),
      );
    } catch (e) {
      state = state.copyWith(qualityOfService: 'Error: ${e.toString()}');
    }
  }

  Future<void> sendSms(String phoneNumber, String message) async {
    try {
      await telephony.sendSms(
        to: phoneNumber,
        message: message,
        statusListener: (status) {
          final smsStatus = switch (status) {
            SendStatus.SENT => 'Sent',
            SendStatus.DELIVERED => 'Delivered',
            _ => 'Failed',
          };
          state = state.copyWith(smsStatus: smsStatus);
        },
      );
    } catch (e) {
      state = state.copyWith(smsStatus: 'Error: $e');
    }
  }

  int _signalStrengthPriority(SignalStrength strength) {
    return switch (strength) {
      SignalStrength.GREAT => 4,
      SignalStrength.GOOD => 3,
      SignalStrength.MODERATE => 2,
      SignalStrength.POOR => 1,
      SignalStrength.NONE_OR_UNKNOWN => 0,
    };
  }

  String _mapSignalStrengthToQoS(SignalStrength strength) {
    return switch (strength) {
      SignalStrength.GREAT => 'Excellent',
      SignalStrength.GOOD => 'Good',
      SignalStrength.MODERATE => 'Moderate',
      SignalStrength.POOR => 'Poor',
      SignalStrength.NONE_OR_UNKNOWN => 'Unknown',
    };
  }
}
