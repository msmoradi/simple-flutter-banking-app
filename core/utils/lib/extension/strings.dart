extension StringNullity on String? {
  bool get isNullOrEmpty => this?.isEmpty ?? true;
}

extension StringToPersianDigits on String {
  String get toPersianDigits => replaceEnglishWithPersianNumbers(this);
}

String replaceEnglishWithPersianNumbers(String input) {
  const englishNumbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const persianNumbers = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

  for (int i = 0; i < englishNumbers.length; i++) {
    input = input.replaceAll(englishNumbers[i], persianNumbers[i]);
  }
  return input;
}
