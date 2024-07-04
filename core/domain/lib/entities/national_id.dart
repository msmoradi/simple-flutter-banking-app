class NationalId {
  String value;

  NationalId({required this.value});

  bool isValid() {
    return RegExp(r'^\d{1}[A-Z]\d{8}$')
        .hasMatch(value);
  }
}
