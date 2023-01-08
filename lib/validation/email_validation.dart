class EmailValidation {
  static String? emailValidate(final String email) {
    if (email.trim().isEmpty || email == null) {
      return 'Please enter your email address';
    }
    if (!RegExp(
            r'^[a-zA-Z][a-zA-Z_.0-9]+@(hotmail|outlook|gmail)\.(com)(\.br)?$')
        .hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return 'Is Valid';
  }
}
