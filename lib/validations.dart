extension StringValidation on String? {
//  Phone Number Validation   //4
  //
  bool isValidCellPhoneNum() {
    return isDigitString() && this?.length == 11;
  }

  bool isDigitString() {
    return this?.codeUnits.every(
              (element) => element >= 48 && element <= 57,
            ) ??
        false;
  }

// Password
  bool isCorrectPassword() {
    return this!.length >= 8;
  }
}
