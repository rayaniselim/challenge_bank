class PasswordValidation {
  static String? passwordValidate(final String? password) {
    if (password == null || password.isEmpty) {
      return 'This field is required';
    }
    if (!RegExp('[0-9]{8}').hasMatch(password)) {
      return 'Password must be 8 numeric characters';
    }
    return null;
  }
}
