class NameValidation {
  static String? nameValidate(String? name) {
    if (name == null || name.trim().isEmpty) {
      return 'This field is required';
    }
    if (!RegExp(r'^([a-zA-Z]{3,})(\ [a-zA-Z]{3,})+$').hasMatch(name)) {
      return 'Enter correct name';
    } else {
      return null;
    }
  }
}
