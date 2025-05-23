class SmsState {
  final String smsStatus;
  final String simState;
  final String roaming;
  final String networkOperator;
  final String qualityOfService;

  const SmsState({
    this.smsStatus = 'N/A',
    this.simState = 'N/A',
    this.roaming = 'N/A',
    this.networkOperator = 'N/A',
    this.qualityOfService = 'N/A',
  });

  SmsState copyWith({
    String? smsStatus,
    String? simState,
    String? roaming,
    String? networkOperator,
    String? qualityOfService,
  }) {
    return SmsState(
      smsStatus: smsStatus ?? this.smsStatus,
      simState: simState ?? this.simState,
      roaming: roaming ?? this.roaming,
      networkOperator: networkOperator ?? this.networkOperator,
      qualityOfService: qualityOfService ?? this.qualityOfService,
    );
  }
}
