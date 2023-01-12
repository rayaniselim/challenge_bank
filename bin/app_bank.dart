import 'dart:io';

import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/name_validation.dart';

main() {
  bool getName = false;

  while (!getName) {
    stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
    final inputName = stdin.readLineSync().toString();
    getName = NameValidation.nameValidate(inputName);
    if (getName == true) {
      stdout.writeln('O nome digitado é: $inputName');
    }
  }

  bool getMail = false;
  while (!getMail) {
    stdout.writeln('Digite o seu email');
    final inputMail = stdin.readLineSync().toString();
    getMail = EmailValidation.emailValidate(inputMail);
    if (getMail == true) {
      stdout.writeln('O email digitado é: $inputMail');
    }
  }
}
