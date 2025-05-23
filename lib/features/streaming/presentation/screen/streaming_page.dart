import 'dart:async';

import 'package:assignment/features/streaming/presentation/riverpod/streaming_provider.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class StreamingPage extends ConsumerStatefulWidget {
  final int dataVolume;
  final String youtubeLink;
  const StreamingPage({
    super.key,
    required this.dataVolume,
    required this.youtubeLink,
  });

  @override
  ConsumerState<StreamingPage> createState() => _StreamingPageState();
}

class _StreamingPageState extends ConsumerState<StreamingPage>
    with WidgetsBindingObserver {
  StreamSubscription? _connectivitySubscription;

  late final StreamingNotifier _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = ref.read(streamingProvider.notifier);
    _notifier.setDataVolume(widget.dataVolume);
    _notifier.setYoutubeLink(widget.youtubeLink);
    _notifier.setContext(context);
    _notifier.setHasShownDataLimitDialog(false);
    _notifier.startMonitoringSpeed();
    _notifier.updateNetworkTypeKPI();

    _initConnectivity();
  }

  Future<void> _initConnectivity() async {
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen(
      _notifier.updateConnectionStatus,
    );

    await _updateConnectionTypeKPI();
  }

  Future<void> _updateConnectionTypeKPI() async {
    final connectivityResult = await Connectivity().checkConnectivity();
    _notifier.updateConnectionStatus(connectivityResult);
  }

  @override
  void dispose() {
    _connectivitySubscription?.cancel();
    _notifier.disposeStreaming();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final streamingState = ref.watch(streamingProvider);
    final streamingWatcher = ref.watch(streamingProvider.notifier);
    return Scaffold(
      appBar: AppBar(title: const Text('Stream YouTube')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            !streamingWatcher.isMobileConnection ||
                    streamingWatcher.controller == null
                ? const Center(
                  child: Text("Waiting for mobile data connection..."),
                )
                : YoutubePlayer(controller: streamingWatcher.controller!),
            const Divider(height: 32),
            const Text(
              'Live KPIs',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ...{
              'Data Speed': streamingState.dataSpeed,
              'Network Type': streamingState.networkType,
              'Connection Type': streamingState.connectionType,
              'Volume Usage': streamingState.volumeUsage,
              'Max Data Speed': streamingState.maxDataSpeed,
            }.entries.map(
              (entry) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      entry.key,
                      style: const TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Text(entry.value),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
