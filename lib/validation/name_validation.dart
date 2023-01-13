import 'dart:io';

class NameValidation {
  static bool nameValidate(String? name) {
    if (name == null || name.isEmpty) {
      return false;
    }
    if (!RegExp(r'^([a-zA-Z]{3,})([a-zA-Z]{3,})\ ?([a-zA-Z]{3,})+$')
        .hasMatch(name.trim())) {
      return false;
    } else {
      return true;
    }
  }

  static nameIsValid() {
    bool nameIsValid = false;
    late String? name;
    while (!nameIsValid) {
      stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
      name = stdin.readLineSync().toString();
      nameIsValid = NameValidation.nameValidate(name);
      if (nameIsValid == true) {
        stdout.writeln('\nO nome digitado é: $name');
      }
    }
  }
}
