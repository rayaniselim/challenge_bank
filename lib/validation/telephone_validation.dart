class TelephoneValidation {
  static bool telephoneValidate(String telephone) {
    if (!RegExp(r'^[(]?[1-9]{2}[)]?\ ?([0-9]{4,5}\-?[0-9]{4})$')
        .hasMatch(telephone)) {
      return false;
    } else {
      return true;
    }
  }
}
