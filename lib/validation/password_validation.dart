class PasswordValidation {
  static bool passwordValidate(String password) {
    if (!RegExp(r'^[0-9]{8}$').hasMatch(password)) {
      return false;
    }
    return true;
  }
}
