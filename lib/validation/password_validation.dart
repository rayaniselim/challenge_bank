class PasswordValidation {
  static bool passwordValidate(String? password) {
    if (password == null || password.isEmpty) {
      return false;
    }
    if (!RegExp(r'^[0-9]{8}$').hasMatch(password)) {
      return false;
    }
    return true;
  }
}
