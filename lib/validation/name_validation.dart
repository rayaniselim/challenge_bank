class NameValidation {
  static String? nameValidate(String name) {
    if (name.isEmpty || name == null) {
      return 'This field is required';
    }
    if (!RegExp(r'([a-zA-Z]{3,6})\ +([a-zA-Z]{3,6})\ ?([a-zA-Z]{0,10})$')
        .hasMatch(name)) {
      return 'Enter correct name';
    } else {
      return null;
    }
  }
}
