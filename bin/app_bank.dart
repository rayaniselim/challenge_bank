import 'dart:io';

import 'package:app_bank/model/account/current_account_model.dart';
import 'package:app_bank/model/account/savings_account_model.dart';
import 'package:app_bank/validation/address_validation.dart';
import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/income_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';

main() {
  NameValidation.nameIsValid();
  EmailValidation.emailIsValid();
  TelephoneValidation.telephoneIsValid();
  CpfValidation.cpfIsValid();
  PasswordValidation.passwordIsValid();
  AddressValidation.cepIsValid();
  AddressValidation.streetIsValid();
  AddressValidation.districtIsValid();
  AddressValidation.cityIsValid();
  AddressValidation.stateIsValid();
  AddressValidation.numberIsValid();
  AddressValidation.complementIsValid();

  bool monthlyIncomeIsInformed = true;
  late bool wantInformMonthlyIncome;
  String? monthlyIncome;
  do {
    stdout.writeln('Digite se gostaria de informar a sua renda:');
    stdout.writeln('\n1- Sim.');
    stdout.writeln('2- Não.');

    final wantInformMonthlyIncomeString = stdin.readLineSync();
    if (wantInformMonthlyIncomeString == null ||
        wantInformMonthlyIncomeString.trim().isEmpty) {
      stdout.writeln('\nDigite a sua opçao\n');

      continue;
    }

    if (wantInformMonthlyIncomeString != '1' &&
        wantInformMonthlyIncomeString != '2') {
      stdout.writeln('\nOpção inválida\n');
      continue;
    }

    wantInformMonthlyIncome = wantInformMonthlyIncomeString == '1';

    switch (wantInformMonthlyIncome) {
      case true:
        var monthlyIncomeIsValid = false;
        do {
          stdout.writeln('\nFavor digite a sua renda:');
          monthlyIncome = stdin.readLineSync().toString();

          monthlyIncomeIsValid =
              RegExp(r'^[0-9.]{2,}$').hasMatch(monthlyIncome);
          if (!monthlyIncomeIsValid) {
            print('\nDigite somente números e pontos');
          }
        } while (!monthlyIncomeIsValid);

        stdout.writeln('\nA renda digitada é: R\$ $monthlyIncome');
        break;
      case false:
        stdout.writeln('\nSua renda não será informada');
        break;
    }

    monthlyIncomeIsInformed = true;
  } while (!monthlyIncomeIsInformed);

  /// PASSO 2

  bool getConta = false;
  while (!getConta) {
    stdout.writeln('Digite qual conta você gostaria de abrir:');
    stdout.writeln('\n1- Conta Corrente.');
    stdout.writeln('2- Conta Poupança.');

    final inputConta = stdin.readLineSync().toString();
    if (inputConta.trim().isEmpty) {
      print('\nDigite a sua opçao');
    } else {
      switch (inputConta) {
        case '1':
          stdout.writeln('\nVocê selecionou a conta corrente:');
          CurrentAccountModel.criarContaCorrente(inputConta);
          stdout.writeln('\nVocê selecione o tipo de cartão:');
          stdout.writeln('1- Cartão Crédito e Débito.');
          stdout.writeln('2- Cartão Debito.');
          final inputCartao = stdin.readLineSync().toString();

          if (inputCartao == '1' && wantInformMonthlyIncome == true) {
            stdout.writeln('\nVocê selecionou o cartão crédito e débito:');
            stdout.writeln('\nParabéns foi liberado o cartão crédito e débito');
            CurrentAccountModel.cartaoCredito();
          }
          // nao está retornando o de baixo
          if (inputCartao == '1' && wantInformMonthlyIncome == false) {
            print(
                '\nComo você não informou a renda só podemos liberar o cartão de debito');
          }
          break;
        case '2':
          stdout.writeln('\nVocê selecionou a conta poupança:');
          SavingsAccountModel.criarContaPoupanca(inputConta);
          SavingsAccountModel.cartaoDebito();
          break;
      }
      getConta = true;
    }
  }
}
