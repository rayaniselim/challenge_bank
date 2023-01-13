import 'dart:io';

import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';

main() {
  final String cpf = '52998224725';

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

  print(soma); //347

  var multiplicacao = soma * 10;
  var resto = multiplicacao % 11;
  print(multiplicacao);
  print(resto);

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
  //   getCpf = CpfValidation.validarCpf(getCpf);
  //   if (getCpf == true) {
  //     stdout.writeln('O cpf digitado é: $inputCpf');
  //   }
  // }

  // bool getPassword = false;
  // while (!getPassword) {
  //   stdout.writeln('Digite sua senha');
  //   final inputPassword = stdin.readLineSync().toString();
  //   getPassword = PasswordValidation.passwordValidate(getPassword);
  //   if (getPassword == true) {
  //     stdout.writeln('O cpf digitado é: $inputPassword');
  //   }
  // }
}
