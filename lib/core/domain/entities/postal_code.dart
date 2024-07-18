class PostalCode {
  String value;

  PostalCode({required this.value});

  bool isValid() {
    return RegExp(r'^(?!0\d{9})(?!(\d)\1{9})(?!(\d{2})\2{4})\d{10}$')
        .hasMatch(value);
  }
}
