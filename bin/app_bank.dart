import 'dart:io';

import 'package:app_bank/validation/name_validation.dart';

main() {
  bool validationName = false;

  while (!validationName) {
    stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
    final inputName = stdin.readLineSync().toString();
    validationName = NameValidation.nameValidate(inputName);
    stdout.writeln('O nome digitado é: $inputName');
  }
}
