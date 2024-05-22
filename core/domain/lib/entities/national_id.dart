class NationalId {
  String value;

  NationalId({required this.value});

  bool isValid() {
    return value.length == 10;
  }
}
