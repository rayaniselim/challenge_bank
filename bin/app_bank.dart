import 'dart:io';
import 'dart:math';

import 'package:app_bank/model/account/card/card_full_model.dart';
import 'package:app_bank/model/account/card/card_model.dart';
import 'package:app_bank/model/account/current_account_model.dart';
import 'package:app_bank/model/account/savings_account_model.dart';
import 'package:app_bank/validation/address_validation.dart';
import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/income_monthy_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';

main() {
  bool nameIsValid = false;
  late String wantInformName;
  while (!nameIsValid) {
    stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
    wantInformName = stdin.readLineSync().toString();
    nameIsValid = NameValidation.nameValidate(wantInformName);
    if (nameIsValid == true) {
      stdout.writeln('\nO nome digitado é: $wantInformName');
    }
  }
//   EmailValidation.emailIsValid();
//   TelephoneValidation.telephoneIsValid();
//   CpfValidation.cpfIsValid();
//   PasswordValidation.passwordIsValid();
//   AddressValidation.cepIsValid();
//   AddressValidation.streetIsValid();
//   AddressValidation.districtIsValid();
//   AddressValidation.cityIsValid();
//   AddressValidation.stateIsValid();
//   AddressValidation.numberIsValid();
//   AddressValidation.complementIsValid();

  bool monthlyIncomeIsInformed = true;
  late bool wantInformMonthlyIncome;
  late String? wantInformMonthlyIncomeString;
  String? monthlyIncome;
  do {
    stdout.writeln('Digite se gostaria de informar a sua renda:');
    stdout.writeln('\n1- Sim.');
    stdout.writeln('2- Não.');
    wantInformMonthlyIncomeString = stdin.readLineSync();
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
//// TODO: VERIFICAR MÉTODO
    monthlyIncomeIsInformed = true;
  } while (!monthlyIncomeIsInformed);

  /// PASSO 2

  bool getConta = false;
  do {
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

            String flag = 'Visa';
            int cvv = Random.secure().nextInt(8) * (20);
            String expirationDate = '2033-01';
            wantInformName = wantInformName;
            int number = Random.secure().nextInt(999999999) * (999999999);

            stdout.writeln(
                '\nPor favor anote as informações do seu Cartão de Crédito');
            stdout.writeln('\nO nome no cartão será: $wantInformName');
            stdout.writeln('\nA bandeira é: $flag');
            stdout.writeln('O código cvv do seu cartão é: $cvv');
            stdout.writeln('O número do seu cartão é: $number');
            stdout.writeln('O validade do seu cartão é: $expirationDate');

            // LIMITE

            double monthyIncome = double.parse(monthlyIncome!);
            if (monthyIncome <= 1000) {
              stdout.writeln('O seu limite é de 100.00');
            } else if (monthyIncome <= 2500) {
              stdout.writeln('O seu limite é de 625.00');
            } else if (monthyIncome <= 5000) {
              stdout.writeln('O seu limite é de 2.000.00');
            } else if (monthyIncome <= 10000) {
              stdout.writeln('O seu limite é de  6.000');
            } else if (monthyIncome > 10000) {
              var limit = (75 * monthyIncome / 100);
              stdout.writeln('O seu limite é de  $limit');
            }
            stdout.writeln('O valor gasto é: R\$0.00 ');
          }
          if (inputCartao == '1' && wantInformMonthlyIncome == false) {
            print(
                '\nComo você não informou a renda só podemos liberar o cartão de debito');
          }
          break;
        case '2':
          stdout.writeln('\nVocê selecionou a conta poupança:');
          SavingsAccountModel.criarContaPoupanca(inputConta);
          stdout.writeln('\nCom ela você tem o direito ao Cartão de Débito');

          String flag = 'Mastercard';
          int cvv = Random.secure().nextInt(8) * (20);
          String expirationDate = '2033-01';
          wantInformName = wantInformName;
          int number = Random.secure().nextInt(999999999) * (999999999);
          stdout.writeln(
              '\nPor favor anote as informações do seu Cartão de Débito');
          stdout.writeln('\nO nome no cartão será: $wantInformName');
          stdout.writeln('\nA bandeira é: $flag');
          stdout.writeln('O código cvv do seu cartão é: $cvv');
          stdout.writeln('O número do seu cartão é: $number');
          stdout.writeln('O validade do seu cartão é: $expirationDate');

          // SavingsAccountModel.cartaoDebito();
          break;
      }
      getConta = true;
    }
  } while (!getConta);
}
