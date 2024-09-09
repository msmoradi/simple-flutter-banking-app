class KycStatus {
  final String title;
  final String description;
  final KycState state;

  KycStatus({
    required this.title,
    required this.description,
    required this.state,
  });
}

enum KycState { success, waiting, failed }
