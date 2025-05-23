class StreamingState {
  final String dataSpeed;
  final String networkType;
  final String connectionType;
  final String volumeUsage;
  final String maxDataSpeed;
  final bool isPaused;
  const StreamingState({
    this.dataSpeed = 'N/A',
    this.networkType = 'N/A',
    this.connectionType = 'N/A',
    this.volumeUsage = 'N/A',
    this.maxDataSpeed = 'N/A',
    this.isPaused = false,
  });

  StreamingState copyWith({
    String? dataSpeed,
    String? networkType,
    String? connectionType,
    String? volumeUsage,
    String? maxDataSpeed,
    bool? isPaused,
  }) {
    return StreamingState(
      dataSpeed: dataSpeed ?? this.dataSpeed,
      networkType: networkType ?? this.networkType,
      connectionType: connectionType ?? this.connectionType,
      volumeUsage: volumeUsage ?? this.volumeUsage,
      maxDataSpeed: maxDataSpeed ?? this.maxDataSpeed,
      isPaused: isPaused ?? this.isPaused,
    );
  }
}
