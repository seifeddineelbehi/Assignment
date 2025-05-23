import 'package:assignment/features/sms/presentation/riverpod/sms_provider.dart';
import 'package:assignment/features/streaming/presentation/riverpod/streaming_provider.dart';
import 'package:assignment/features/voice/presentation/riverpod/voice_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class KpisPage extends ConsumerStatefulWidget {
  const KpisPage({super.key});

  @override
  ConsumerState<KpisPage> createState() => _KpisPageState();
}

class _KpisPageState extends ConsumerState<KpisPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final streamingState = ref.watch(streamingProvider);
    final voiceState = ref.watch(voiceProvider);
    final smsState = ref.watch(smsProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Telephony Services App')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('KPIs'),
                      content: SizedBox(
                        width: 0.9.sw,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children:
                                {
                                  'Termination Reason':
                                      voiceState.terminationReason,
                                  'Call Duration': voiceState.callDuration,
                                  'Phone Number': voiceState.number,
                                  'Number Of Minutes':
                                      voiceState.numberOfMinutes,
                                  'Service State': voiceState.serviceState,
                                  'Network Type': streamingState.networkType,
                                  'Connection Type':
                                      streamingState.connectionType,
                                  'Volume Usage': streamingState.volumeUsage,
                                  'Max Data Speed': streamingState.maxDataSpeed,
                                  'SMS Status': smsState.smsStatus,
                                  'SIM State': smsState.simState,
                                  'Roaming': smsState.roaming,
                                  'Network Operator': smsState.networkOperator,
                                  'Quality of Service':
                                      smsState.qualityOfService,
                                }.entries.map((entry) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 4,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          entry.key,
                                          style: const TextStyle(
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        const SizedBox(width: 8),
                                        Flexible(child: Text(entry.value)),
                                      ],
                                    ),
                                  );
                                }).toList(),
                          ),
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Close'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Check Current KPIs'),
            ),
          ],
        ),
      ),
    );
  }
}
