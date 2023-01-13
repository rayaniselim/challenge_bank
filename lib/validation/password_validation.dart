import 'dart:io';

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

  static passwordIsValid() {
    bool passwordIsValid = false;
    while (!passwordIsValid) {
      stdout.writeln('Digite sua senha');
      final inputPassword = stdin.readLineSync().toString();
      passwordIsValid = PasswordValidation.passwordValidate(inputPassword);
      if (passwordIsValid == true) {
        stdout.writeln('\nA senha digitada é: $inputPassword');
      }
    }
  }
}
