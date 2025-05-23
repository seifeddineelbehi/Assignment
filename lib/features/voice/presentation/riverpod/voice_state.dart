class VoiceState {
  final String terminationReason;
  final String callDuration;
  final String serviceState;
  final String numberOfMinutes;
  final String number;

  const VoiceState({
    this.terminationReason = 'N/A',
    this.callDuration = 'N/A',
    this.serviceState = 'N/A',
    this.numberOfMinutes = 'N/A',
    this.number = 'N/A',
  });

  VoiceState copyWith({
    String? terminationReason,
    String? callDuration,
    String? serviceState,
    String? numberOfMinutes,
    String? number,
  }) {
    return VoiceState(
      terminationReason: terminationReason ?? this.terminationReason,
      callDuration: callDuration ?? this.callDuration,
      serviceState: serviceState ?? this.serviceState,
      numberOfMinutes: numberOfMinutes ?? this.numberOfMinutes,
      number: number ?? this.number,
    );
  }
}
