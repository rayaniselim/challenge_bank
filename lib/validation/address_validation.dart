import 'dart:io';

class AddressValidation {
  static cepIsValid() {
    bool cepIsValid = false;
    while (!cepIsValid) {
      stdout.writeln('\nDigite o seu CEP');
      final inputCep = stdin.readLineSync().toString();
      if (inputCep.isEmpty) {
        print('\nO CEP é requerido');
      } else if (!RegExp(r'^[0-9]{5}\-?[0-9]{3}$').hasMatch(inputCep)) {
        print('\nDigite corretamente o seu CEP');
      } else {
        stdout.writeln('\nO CEP digitado é: $inputCep');
        cepIsValid = true;
      }
    }
  }

  static streetIsValid() {
    bool streetIsValid = false;
    while (!streetIsValid) {
      stdout.writeln('\nDigite o nome da sua rua/avenida');
      final inputRua = stdin.readLineSync().toString();
      if (inputRua.isEmpty) {
        print('\nO nome da rua/avenida é requerido');
      } else if (!RegExp(r'^([a-zA-Z]{2,})(\ [a-zA-Z]{3,})+$')
          .hasMatch(inputRua)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nA rua/avenida digitado é: $inputRua');
        streetIsValid = true;
      }
    }
  }

  static districtIsValid() {
    bool districtIsValid = false;
    while (!districtIsValid) {
      stdout.writeln('\nDigite o nome do seu bairro');
      final inputBairro = stdin.readLineSync().toString();
      if (inputBairro.isEmpty) {
        print('\nO nome do bairro é requerido');
      } else if (!RegExp(r'^[a-zA-Z]{3,}\ ?[a-zA-Z]{0,}?\ ?[a-zA-Z]{0,}?$')
          .hasMatch(inputBairro)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nA bairro digitado é: $inputBairro');
        districtIsValid = true;
      }
    }
  }

  static cityIsValid() {
    bool cityIsValid = false;
    while (!cityIsValid) {
      stdout.writeln('\nDigite o nome da cidade');
      final inputCidade = stdin.readLineSync().toString();
      if (inputCidade.isEmpty) {
        print('\nO nome da cidade é requerido');
      } else if (!RegExp(
              r'^[a-zA-Záãí]{3,}\ ?[a-zA-Záãí]{0,}?\ ?[a-zA-Záãí]{0,}?$')
          .hasMatch(inputCidade)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nA cidade digitada é: $inputCidade');
        cityIsValid = true;
      }
    }
  }

  static stateIsValid() {
    bool stateIsValid = false;
    while (!stateIsValid) {
      stdout.writeln('\nDigite o nome do estado');
      final inputEstado = stdin.readLineSync().toString();
      if (inputEstado.isEmpty) {
        print('\nO nome do estado é requerido');
      } else if (!RegExp(
              r'^[a-zA-Záãí]{3,}\ ?[a-zA-Záãí]{0,}?\ ?[a-zA-Záãí]{0,}?$')
          .hasMatch(inputEstado)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nO estado digitado é: $inputEstado');
        stateIsValid = true;
      }
    }
  }

  static numberIsValid() {
    bool numberIsValid = false;
    while (!numberIsValid) {
      stdout.writeln('\nDigite o número');
      final inputNumero = stdin.readLineSync().toString();
      if (inputNumero.isEmpty) {
        print('\nO número é requerido');
      } else if (!RegExp(r'^[0-9a-zA-Z-]{1,}\ ?[a-zA-Z0-9-]{0,}?$')
          .hasMatch(inputNumero)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nO número digitado é: $inputNumero');
        numberIsValid = true;
      }
    }
  }

  static complementIsValid() {
    bool complementIsValid = false;

    while (!complementIsValid) {
      stdout.writeln('\nDigite o complemento');
      final inputComplemento = stdin.readLineSync();
      if (inputComplemento == null || inputComplemento.isEmpty) {
        print('O complemento não será informado');
        true;
      } else if (!RegExp(
              r'^[a-zA-Záãí0-9]{3,}\ ?[a-zA-Záãí0-9]{0,}?\ ?[a-zA-Záãí0-9]{0,}?$')
          .hasMatch(inputComplemento)) {
        print('\nDigite corretamente');
      }
      stdout.writeln('\nO complemento digitado é: $inputComplemento');
      complementIsValid = true;
    }
  }
}
