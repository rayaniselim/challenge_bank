/* 
Senha

Válidos:
  - 01234567  

Inválidos:
  - 1234567
  - 123456789
  - as#%as12

*/
class PasswordValidation {
  // TODO: COLOCAR INPUT
  static String? passwordValidate({
    String? password,
  }) {
    if (password == null || password.trim().isEmpty) {
      return 'This field is required';
    }
    if (!RegExp('[0-9]{8}').hasMatch(password)) {
      return 'Password must be 8 numeric characters';
    }
    return null;
  }

  static String? confirmPasswordValidate({
    String? password,
    String? confirmPassword,
  }) {
    if (confirmPassword == null || confirmPassword.isEmpty) {
      return 'This field is required';
    }
    if (confirmPassword != password) {
      return 'Confimation password does not match the entered password';
    }
    return null;
  }
}
