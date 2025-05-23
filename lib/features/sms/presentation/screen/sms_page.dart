import 'package:assignment/features/sms/presentation/riverpod/sms_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SmsPage extends ConsumerWidget {
  const SmsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final smsState = ref.watch(smsProvider);
    final smsNotifier = ref.read(smsProvider.notifier);

    final phoneController = TextEditingController();
    final messageController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Sms Service')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Send SMS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: phoneController,
              decoration: const InputDecoration(
                labelText: 'Receiver Phone Number',
                hintText: 'e.g., +1234567890',
              ),
              keyboardType: TextInputType.phone,
            ),
            TextField(
              controller: messageController,
              decoration: const InputDecoration(
                labelText: 'Message Body',
                hintText: 'Enter your message',
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final phone = phoneController.text.trim();
                final message = messageController.text.trim();

                if (phone.isEmpty || message.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please fill all fields')),
                  );
                  return;
                }

                smsNotifier.sendSms(phone, message);
              },
              child: const Text('Send SMS'),
            ),

            const SizedBox(height: 8),
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
              child: const Text('Show Data KPIs'),
            ),
          ],
        ),
      ),
    );
  }
}
