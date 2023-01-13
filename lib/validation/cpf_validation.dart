import 'dart:io';

class CpfValidation {
  static cpfIsValid() {
    bool cpfIsValid = false;
    while (!cpfIsValid) {
      stdout.writeln('Digite o seu cpf');
      final inputCpf = stdin.readLineSync();
      if (inputCpf!.isEmpty) {
        print('\nO CPF é requerido');
      } else if (!RegExp(r'^[0-9]{3}[.]?[0-9]{3}[.]?[0-9]{3}[-]?[0-9]{2}$')
          .hasMatch(inputCpf)) {
        print('\nDigite corretamente');
      } else {
        stdout.writeln('\nO cpf digitado é: $inputCpf');
        cpfIsValid = true;
      }
    }
  }

  static bool _validFirstDigit(String cpf) {
    num soma = 0;
    String posicaoUm = cpf[0].toString();
    String posicaoDois = cpf[1].toString();
    String posicaoTres = cpf[2].toString();
    String posicaoQuatro = cpf[3].toString();
    String posicaoCinco = cpf[4].toString();
    String posicaoSeis = cpf[5].toString();
    String posicaoSete = cpf[6].toString();
    String posicaoOito = cpf[7].toString();
    String posicaoNove = cpf[8].toString();

    soma = soma + (int.parse(posicaoUm) * 10);
    soma = soma + (int.parse(posicaoDois) * 9);
    soma = soma + (int.parse(posicaoTres) * 8);
    soma = soma + (int.parse(posicaoQuatro) * 7);
    soma = soma + (int.parse(posicaoCinco) * 6);
    soma = soma + (int.parse(posicaoSeis) * 5);
    soma = soma + (int.parse(posicaoSete) * 4);
    soma = soma + (int.parse(posicaoOito) * 3);
    soma = soma + (int.parse(posicaoNove) * 2);

    var multiplicacao = soma * 10;
    var resto = multiplicacao % 11;

    if (resto == 10) {
      resto = 0;
    }
    if (cpf[9] == resto.toString()) {
      return true;
    }
    return false;
  }

  static _validSecondDigit(String cpf) {
    num soma = 0;
    String posicaoUm = cpf[0].toString();
    String posicaoDois = cpf[1].toString();
    String posicaoTres = cpf[2].toString();
    String posicaoQuatro = cpf[3].toString();
    String posicaoCinco = cpf[4].toString();
    String posicaoSeis = cpf[5].toString();
    String posicaoSete = cpf[6].toString();
    String posicaoOito = cpf[7].toString();
    String posicaoNove = cpf[8].toString();
    String posicaoDez = cpf[9].toString();

    soma = soma + (int.parse(posicaoUm) * 11);
    soma = soma + (int.parse(posicaoDois) * 10);
    soma = soma + (int.parse(posicaoTres) * 9);
    soma = soma + (int.parse(posicaoQuatro) * 8);
    soma = soma + (int.parse(posicaoCinco) * 7);
    soma = soma + (int.parse(posicaoSeis) * 6);
    soma = soma + (int.parse(posicaoSete) * 5);
    soma = soma + (int.parse(posicaoOito) * 4);
    soma = soma + (int.parse(posicaoNove) * 3);
    soma = soma + (int.parse(posicaoDez) * 2);

    var multiplicacao = soma * 10;
    var resto = multiplicacao % 11;
    if (resto == 10) {
      resto = 0;
    }
    if (cpf[10] == resto.toString()) {
      return true;
    }
    return false;
  }

  static bool validarCpf(String cpf) {
    if (_validFirstDigit(cpf) && _validSecondDigit(cpf)) {
      return true;
    }
    return false;
  }
}
