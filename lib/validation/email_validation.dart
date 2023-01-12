class EmailValidation {
  static bool emailValidate(String? email) {
    if (email == null || email.trim().isEmpty) {
      return false; //'Please enter your email address';
    }
    if (!RegExp(
            r'^[a-zA-Z][a-zA-Z_.0-9]+@(hotmail|outlook|gmail)\.(com)(\.br)?$')
        .hasMatch(email)) {
      return false;
      // 'Please enter a valid email address';
    }
    return true;
  }
}
