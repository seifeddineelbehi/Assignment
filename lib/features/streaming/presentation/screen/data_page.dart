import 'package:another_telephony/telephony.dart';
import 'package:assignment/features/streaming/presentation/riverpod/streaming_provider.dart';
import 'package:assignment/features/streaming/presentation/screen/streaming_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DataPage extends ConsumerStatefulWidget {
  const DataPage({super.key});

  @override
  ConsumerState<DataPage> createState() => _DataPageState();
}

class _DataPageState extends ConsumerState<DataPage> {
  final TextEditingController _volumeController = TextEditingController();
  final TextEditingController _youtubeLinkController = TextEditingController(
    text: "https://www.youtube.com/watch?v=dQw4w9WgXcQ",
  );
  final Telephony telephony = Telephony.instance;

  @override
  Widget build(BuildContext context) {
    final streamingState = ref.watch(streamingProvider);
    return Scaffold(
      appBar: AppBar(title: const Text('Data')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'YouTube Streaming',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _youtubeLinkController,
              decoration: const InputDecoration(
                labelText: 'Youtube Link',
                hintText: 'https://www.youtube.com/watch?v=...',
              ),
              keyboardType: TextInputType.text,
            ),
            TextField(
              controller: _volumeController,
              decoration: const InputDecoration(
                labelText: 'Data Volume (MB)',
                hintText: 'e.g., 50',
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                final volumeText = _volumeController.text.trim();
                final linkText = _youtubeLinkController.text.trim();

                if (volumeText.isEmpty && linkText.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Please enter data')),
                  );
                  return;
                }

                final volume = double.tryParse(volumeText) ?? 0;
                if (volume <= 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Please enter a valid volume'),
                    ),
                  );
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (BuildContext context) => StreamingPage(
                          dataVolume: int.parse(_volumeController.text),
                          youtubeLink: _youtubeLinkController.text,
                        ),
                  ),
                );
              },
              child: const Text('Stream YouTube'),
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
                                  'Network Type': streamingState.networkType,
                                  'Connection Type':
                                      streamingState.connectionType,
                                  'Volume Usage': streamingState.volumeUsage,
                                  'Max Data Speed': streamingState.maxDataSpeed,
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
