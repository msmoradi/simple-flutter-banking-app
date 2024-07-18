class NationalId {
  String value;

  NationalId({required this.value});

  bool isValid() {
    return RegExp(r'^\d{10}$')
        .hasMatch(value);
  }
}
