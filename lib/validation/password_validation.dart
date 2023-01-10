class PasswordValidation {
  static String? passwordValidate(String? password) {
    final handledPassword = password?.trim();
    if (handledPassword == null || handledPassword.isEmpty) {
      return 'This field is required';
    }
    if (!RegExp(r'^[0-9]{8}$').hasMatch(handledPassword)) {
      return 'Password must be 8 numeric characters';
    }
    return null;
  }
}
