import 'dart:io';

class TelephoneValidation {
  static bool telephoneValidate(String? telephone) {
    if (telephone == null || telephone.isEmpty) {
      return false;
    }
    if (!RegExp(r'^[(]?[1-9]{2}[)]?\ ?([0-9]{4,5}\-?[0-9]{4})$')
        .hasMatch(telephone)) {
      return false;
    } else {
      return true;
    }
  }

  static telephoneIsValid() {
    bool telephoneIsValid = false;
    while (!telephoneIsValid) {
      stdout.writeln('\nDigite o seu telefone');
      final inputTelephone = stdin.readLineSync().toString();
      telephoneIsValid = TelephoneValidation.telephoneValidate(inputTelephone);
      if (telephoneIsValid == true) {
        stdout.writeln('\nO telefone digitado é: $inputTelephone');
      }
    }
  }
}
