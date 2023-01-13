import 'dart:io';

import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';

main() {
  // bool getName = false;
  // while (!getName) {
  //   stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
  //   final inputName = stdin.readLineSync().toString();
  //   getName = NameValidation.nameValidate(inputName);
  //   if (getName == true) {
  //     stdout.writeln('O nome digitado é: $inputName');
  //   }
  // }

  // bool getMail = false;
  // while (!getMail) {
  //   stdout.writeln('Digite o seu email');
  //   final inputMail = stdin.readLineSync().toString();
  //   getMail = EmailValidation.emailValidate(inputMail);
  //   if (getMail == true) {
  //     stdout.writeln('O email digitado é: $inputMail');
  //   }
  // }

  // bool getTelephone = false;
  // while (!getTelephone) {
  //   stdout.writeln('Digite o seu telefone');
  //   final inputTelephone = stdin.readLineSync().toString();
  //   getTelephone = TelephoneValidation.telephoneValidate(inputTelephone);
  //   if (getTelephone == true) {
  //     stdout.writeln('O telefone digitado é: $inputTelephone');
  //   }
  // }

  // bool getCpf = false;
  // while (!getCpf) {
  //   stdout.writeln('Digite o seu cpf');
  //   final inputCpf = stdin.readLineSync().toString();
  //   getCpf = CpfValidation.validarCpf(inputCpf);
  //   if (getCpf == true) {
  //     stdout.writeln('O cpf digitado é: $inputCpf');
  //   }
  // }

  // bool getPassword = false;
  // while (!getPassword) {
  //   stdout.writeln('Digite sua senha');
  //   final inputPassword = stdin.readLineSync().toString();
  //   getPassword = PasswordValidation.passwordValidate(inputPassword);
  //   if (getPassword == true) {
  //     stdout.writeln('O cpf digitado é: $inputPassword');
  //   }
  // }

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
}
