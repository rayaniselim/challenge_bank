import 'dart:io';

class EmailValidation {
  static bool emailValidate(String? email) {
    if (email == null || email.trim().isEmpty) {
      return false;
    }
    if (!RegExp(
            r'^[a-zA-Z][a-zA-Z_.0-9]+@(hotmail|outlook|gmail)\.(com)(\.br)?$')
        .hasMatch(email)) {
      return false;
    }
    return true;
  }

  static emailIsValid() {
    bool emailIsValid = false;
    while (!emailIsValid) {
      stdout.writeln('Digite o seu email');
      final inputMail = stdin.readLineSync().toString();
      emailIsValid = EmailValidation.emailValidate(inputMail);
      if (emailIsValid == true) {
        stdout.writeln('\nO email digitado é: $inputMail');
      }
    }
  }
}
