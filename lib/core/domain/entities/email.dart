class Email {
  String value;

  Email({required this.value});

  bool isValid() {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(value);
  }

  String convertToObscure() {
    if (!value.contains('@')) {
      return value;
    }
    const obscureCharacters = "***";
    final email = value;
    final indexOfAtSign = email.indexOf('@');
    final numberOfShowingCharacter = email[1] == "." ? 3 : 2;
    final hiddenEmailPrefix = email.replaceRange(numberOfShowingCharacter, indexOfAtSign, obscureCharacters);
    final indexOfAtSignAfterHidePrefix = hiddenEmailPrefix.indexOf('@');
    final dot = hiddenEmailPrefix.lastIndexOf(".");
    final obscuredEmail = hiddenEmailPrefix.replaceRange(indexOfAtSignAfterHidePrefix + 1, dot, obscureCharacters);
    return obscuredEmail;
  }

  String hide() {
    if(!isValid()) {
      return value;
    }
    return value.replaceRange(2, value.indexOf('@') - 1, "***");
  }
}
