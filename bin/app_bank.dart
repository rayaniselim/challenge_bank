import 'dart:io';

import 'package:app_bank/model/account/current_account_model.dart';
import 'package:app_bank/model/account/savings_account_model.dart';
import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';

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

  bool getTelephone = false;
  while (!getTelephone) {
    stdout.writeln('Digite o seu telefone');
    final inputTelephone = stdin.readLineSync().toString();
    getTelephone = TelephoneValidation.telephoneValidate(inputTelephone);
    if (getTelephone == true) {
      stdout.writeln('O telefone digitado é: $inputTelephone');
    }
  }

  bool getCpf = false;
  while (!getCpf) {
    stdout.writeln('Digite o seu cpf');
    final inputCpf = stdin.readLineSync().toString();
    getCpf = CpfValidation.validarCpf(inputCpf);
    if (getCpf == true) {
      stdout.writeln('O cpf digitado é: $inputCpf');
    }
  }

  bool getPassword = false;
  while (!getPassword) {
    stdout.writeln('Digite sua senha');
    final inputPassword = stdin.readLineSync().toString();
    getPassword = PasswordValidation.passwordValidate(inputPassword);
    if (getPassword == true) {
      stdout.writeln('O cpf digitado é: $inputPassword');
    }
  }

  bool getCep = false;
  while (!getCep) {
    stdout.writeln('Digite o seu cep');
    final inputCep = stdin.readLineSync().toString();
    if (inputCep.isEmpty) {
      print('O cep é requerido');
    } else if (!RegExp(r'^[0-9]{8}$').hasMatch(inputCep)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('O cep digitado é: $inputCep');
      getCep = true;
    }
  }

  bool getRua = false;
  while (!getRua) {
    stdout.writeln('Digite o nome da sua rua/avenida');
    final inputRua = stdin.readLineSync().toString();
    if (inputRua.isEmpty) {
      print('O nome da rua/avenida é requerido');
    } else if (!RegExp(r'^([a-zA-Z]{3,})(\ [a-zA-Z]{3,})+$')
        .hasMatch(inputRua)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('A rua/avenida digitado é: $inputRua');
      getRua = true;
    }
  }

  bool getBairro = false;
  while (!getBairro) {
    stdout.writeln('Digite o nome do seu bairro');
    final inputBairro = stdin.readLineSync().toString();
    if (inputBairro.isEmpty) {
      print('O nome do bairro é requerido');
    } else if (!RegExp(r'^[a-zA-Z]{3,}\ ?[a-zA-Z]{0,}?\ ?[a-zA-Z]{0,}?$')
        .hasMatch(inputBairro)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('A bairro digitado é: $inputBairro');
      getBairro = true;
    }
  }

  bool getCidade = false;
  while (!getCidade) {
    stdout.writeln('Digite o nome da cidade');
    final inputCidade = stdin.readLineSync().toString();
    if (inputCidade.isEmpty) {
      print('O nome da cidade é requerido');
    } else if (!RegExp(
            r'^[a-zA-Záãí]{3,}\ ?[a-zA-Záãí]{0,}?\ ?[a-zA-Záãí]{0,}?$')
        .hasMatch(inputCidade)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('A cidade digitada é: $inputCidade');
      getCidade = true;
    }
  }

  bool getEstado = false;
  while (!getEstado) {
    stdout.writeln('Digite o nome do estado');
    final inputEstado = stdin.readLineSync().toString();
    if (inputEstado.isEmpty) {
      print('O nome do estado é requerido');
    } else if (!RegExp(
            r'^[a-zA-Záãí]{3,}\ ?[a-zA-Záãí]{0,}?\ ?[a-zA-Záãí]{0,}?$')
        .hasMatch(inputEstado)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('O estado digitado é: $inputEstado');
      getEstado = true;
    }
  }

  bool getNumero = false;
  while (!getNumero) {
    stdout.writeln('Digite o número');
    final inputNumero = stdin.readLineSync().toString();
    if (inputNumero.isEmpty) {
      print('O número é requerido');
    } else if (!RegExp(r'^[0-9a-zA-Z-]{1,}\ ?[a-zA-Z0-9-]{0,}?$')
        .hasMatch(inputNumero)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('O número digitado é: $inputNumero');
      getNumero = true;
    }
  }

  bool getComplemento = false;
  while (!getComplemento) {
    stdout.writeln('Digite o complemento');
    final inputComplemento = stdin.readLineSync().toString();
    if (inputComplemento.isEmpty) {
      print('O complemento é requerido');
    } else if (!RegExp(
            r'^[a-zA-Záãí0-9]{3,}\ ?[a-zA-Záãí0-9]{0,}?\ ?[a-zA-Záãí0-9]{0,}?$')
        .hasMatch(inputComplemento)) {
      print('Digite corretamente');
    } else {
      stdout.writeln('O complemento digitado é: $inputComplemento');
      getComplemento = true;
    }
  }

  bool getRenda = false;
  while (!getRenda) {
    const bool um = true;
    const bool dois = false;

    stdout.writeln('Digite se gostaria de informar a sua renda:');
    stdout.writeln('1- Sim.');
    stdout.writeln('2- Não.');
    final inputRenda = stdin.readLineSync().toString();
    if (inputRenda == null || inputRenda.trim().isEmpty) {
      print('Digite a sua opçao');
    } else {
      switch (inputRenda) {
        case '1':
          um == true;
          stdout.writeln('Favor digite a sua renda:');
          final inputRenda = stdin.readLineSync().toString();
          if (!RegExp(r'^[0-9.]{2,}$').hasMatch(inputRenda)) {
            print('Somente números e pontos');
          }
          // TODO: nao está retornando o de baixo

          // else if (inputRenda == false) {
          //   stdout.writeln('Favor digite a sua renda:');
          //   print('retorno do digite');
          // }
          stdout.writeln('A renda digitada é: $inputRenda');
          break;
        case '2':
          dois == false;
          stdout.writeln('Sua renda não será informada');
          break;
      }
      getRenda = true;
    }
  }

/////////////// PASSO 2

  bool getConta = false;
  while (!getConta) {
    stdout.writeln('Digite qual conta você gostaria de abrir:');
    stdout.writeln('1- Conta Corrente.');
    stdout.writeln('2- Conta Poupança.');

    final inputConta = stdin.readLineSync().toString();
    if (inputConta == null || inputConta.trim().isEmpty) {
      print('Digite a sua opçao');
    } else {
      switch (inputConta) {
        case '1':
          stdout.writeln('Você selecionou a conta corrente:');
          CurrentAccountModel.criarContaCorrente(inputConta);
          stdout.writeln('Você selecione o tipo de cartão:');
          stdout.writeln('1- Cartão Crédito e Débito.');
          stdout.writeln('2- Cartão Debito.');
          final inputCartao = stdin.readLineSync().toString();

          if (inputCartao == '1' && getRenda == true) {
            stdout.writeln('Você selecionou o cartão crédito e débito:');
            stdout.writeln('Parabéns foi liberado o cartão crédito e débito');
            CurrentAccountModel.cartaoCredito();
          }
          // nao está retornando o de baixo
          if (inputCartao == '1' && getRenda == 2) {
            print(
                'Como você não informou a renda só podemos liberar o cartão de debito');
          }
          break;
        case '2':
          stdout.writeln('Você selecionou a conta poupança:');
          SavingsAccountModel.criarContaPoupanca(inputConta);
          SavingsAccountModel.cartaoDebito();
          break;
      }
      getConta = true;
    }
  }
}
