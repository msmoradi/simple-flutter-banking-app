class PhoneNumber {
  String value;

  PhoneNumber({required this.value});

  bool isValid() {
    return RegExp(r'^(?:0|\+98|0098)?9\d{9}$|^(?:0|\+98|0098)21\d{8}$')
        .hasMatch(value);
  }
}
