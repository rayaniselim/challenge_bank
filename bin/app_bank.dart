import 'dart:io';
import 'dart:math';
import 'package:app_bank/model/account/card/card_debito_model.dart';
import 'package:app_bank/model/account/card/card_full_model.dart';
import 'package:app_bank/model/account/current_account_model.dart';
import 'package:app_bank/model/account/savings_account_model.dart';
import 'package:app_bank/validation/address_validation.dart';
import 'package:app_bank/validation/cpf_validation.dart';
import 'package:app_bank/validation/email_validation.dart';
import 'package:app_bank/validation/name_validation.dart';
import 'package:app_bank/validation/password_validation.dart';
import 'package:app_bank/validation/telephone_validation.dart';
import 'package:test/expect.dart';

// while (condicao) { o loop só vai iniciar se a condicao for verdadeira}

// do { aqui ele inicia  a condicao
// } while (e depois ele pergunta); se o loop for falso, ele executa pelo menos uma vez

main() {
  bool nameIsValid = false;
  late String wantInformName;
  do {
    stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
    wantInformName = stdin.readLineSync().toString();
    nameIsValid = NameValidation.nameValidate(wantInformName);
    if (nameIsValid == true) {
      stdout.writeln('\nO nome digitado é: $wantInformName');
    }
  } while (!nameIsValid);
  // EmailValidation.emailIsValid();
  // TelephoneValidation.telephoneIsValid();
  // CpfValidation.cpfIsValid();

  bool passwordIsValid = false;
  late String? inputPassword;
  do {
    stdout.writeln('Digite sua senha');
    inputPassword = stdin.readLineSync().toString();
    passwordIsValid = PasswordValidation.passwordValidate(inputPassword);
    if (passwordIsValid == true) {
      stdout.writeln('\nA senha digitada é: $inputPassword');
    }
  } while (!passwordIsValid);
  // AddressValidation.cepIsValid();
  // AddressValidation.streetIsValid();
  // AddressValidation.districtIsValid();
  // AddressValidation.cityIsValid();
  // AddressValidation.stateIsValid();
  // AddressValidation.numberIsValid();
  // AddressValidation.complementIsValid();

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
    monthlyIncomeIsInformed = true;
  } while (!monthlyIncomeIsInformed);

  bool getConta = false;
  late bool getCurrentAccount;
  bool isCreateCurrentAccount = false;
  bool isCardFullValid = false;
  late String result;
  late double limit;

  do {
    stdout.writeln('Digite qual conta você gostaria de abrir:');
    stdout.writeln('\n1- Conta Corrente.');
    stdout.writeln('2- Conta Poupança.');

    final inputConta = stdin.readLineSync().toString();
    if (inputConta.trim().isEmpty) {
      stdout.writeln('\nDigite a sua opçao');
      continue;
    }
    if (inputConta != '1' && inputConta != '2') {
      stdout.writeln('\nOpção inválida\n');
      continue;
    }
    getCurrentAccount = inputConta == '1';
    switch (inputConta) {
      case '1':
        stdout.writeln('\nVocê selecionou a conta corrente:');
        isCreateCurrentAccount =
            CurrentAccountModel.criarContaCorrente(inputConta);
        stdout.writeln('\nVocê selecione o tipo de cartão:');
        stdout.writeln('1- Cartão Crédito e Débito.');
        stdout.writeln('2- Cartão Debito.');
        final inputCartao = stdin.readLineSync().toString();

        if (inputCartao == '1' && wantInformMonthlyIncome == true) {
          stdout.writeln('\nVocê selecionou o cartão crédito e débito:');
          stdout.writeln('\nParabéns foi liberado o cartão crédito e débito');
          isCardFullValid = CardFull.cardFullMethod(wantInformName);

          // LIMITE
          double monthyIncome = double.parse(monthlyIncome!);
          if (monthyIncome <= 1000) {
            limit = (10 * monthyIncome / 100);
            result = 'O seu limite é de $limit';
          } else if (monthyIncome <= 2500) {
            limit = (25 * monthyIncome / 100);
            print(result = ('O seu limite é de $limit'));
          } else if (monthyIncome <= 5000) {
            limit = (40 * monthyIncome / 100);
            stdout.writeln('O seu limite é de $limit');
          } else if (monthyIncome <= 10000) {
            limit = (60 * monthyIncome / 100);
            stdout.writeln('O seu limite é de  $limit');
          } else if (monthyIncome > 10000) {
            limit = (75 * monthyIncome / 100);
            stdout.writeln('O seu limite é de  $limit');
          }
          stdout.writeln('\nO valor gasto é: R\$0.00 ');
        }
        if (inputCartao == '1' && wantInformMonthlyIncome == false) {
          stdout.writeln(
              '\nComo você não informou a renda só podemos liberar o cartão de debito');
          CardDebitoModel.cardDebito(wantInformName);
          if (inputCartao == '2') {
            CardDebitoModel.cardDebito(wantInformName);
            break;
          }
        }
        break;

      case '2':
        getCurrentAccount = inputConta == '2';
        stdout.writeln('\nVocê selecionou a conta poupança:');
        SavingsAccountModel.criarContaPoupanca(inputConta);
        stdout.writeln('\nCom ela você tem o direito ao Cartão de Débito');
        CardDebitoModel.cardDebito(wantInformName);
        break;
    }
    getConta = true;
  } while (!getConta);

  bool selectedMenuInteractive = true;
  String? inputMenuInteractive;
  String theAmountDeposited = '0';
  String? requestedAmount; //valor solicitado
  late double amountBorrowedToPay;
  double amountRequestedForLoan = 0;
// AQUI

  do {
    stdout.writeln('Você está no menu interativo');
    stdout.writeln('\nDigite a sua senha para poder continuar:');
    final password = stdin.readLineSync().toString();
    if (inputPassword != password) {
      stdout.writeln('\nSenha incorreta:');
      stdout.writeln('\nDigite a sua senha para poder continuar:');
      password;
      continue;
    } else {
      stdout.writeln('\nAcesso liberado');
    }
    stdout.writeln('Selecione o número da opção que deseja:\n');
    stdout.writeln('1- Saque.');
    stdout.writeln('2- Depósito.');
    stdout.writeln('3- Empréstimo.');
    stdout.writeln('4- Rendimentos.');
    stdout.writeln('5- Realizar Pagamentos com Débito.');
    stdout.writeln('6- Realizar Pagamentos com Crédito.');
    inputMenuInteractive = stdin.readLineSync().toString();
    if (inputMenuInteractive == null || inputMenuInteractive.trim().isEmpty) {
      stdout.writeln('\nDigite a sua opçao\n');
    } else {
      if (inputMenuInteractive != '1' &&
          inputMenuInteractive != '2' &&
          inputMenuInteractive != '3' &&
          inputMenuInteractive != '4' &&
          inputMenuInteractive != '5' &&
          inputMenuInteractive != '6') {
        stdout.writeln('\nOpção inválida\n');
        stdout.writeln('\nDigite um número de 1 a 6:\n');
        inputMenuInteractive = stdin.readLineSync().toString();
        continue;
      }
    }

    double? valorDepositado = double.parse(theAmountDeposited.toString());
    switch (inputMenuInteractive) {
      case '1': // SAQUE
        bool aquiVaiPassarOValorDeSaque = false;
        do {
          stdout.writeln(
              '\nO seu saldo disponivel é: R\$$valorDepositado '); //pegar do deposito
          stdout.writeln('\nFavor digite o valor que deseja sacar:');
          requestedAmount = stdin.readLineSync().toString();
          aquiVaiPassarOValorDeSaque =
              RegExp(r'^[0-9.]{1,}$').hasMatch(requestedAmount);
          if (!aquiVaiPassarOValorDeSaque) {
            print('\nDigite somente números e pontos');
          }
        } while (!aquiVaiPassarOValorDeSaque);
        stdout.writeln('\nO valor solicitado é: R\$$requestedAmount');

        double requestedAmountParse = double.parse(requestedAmount);
        double saldoRestante = (valorDepositado - requestedAmountParse);
        if (valorDepositado == 0.0) {
          stdout.writeln(
              '\nVocê não tem saldo suficiente para essa transação \n saldo atual: R\$ $valorDepositado.');
          stdout.writeln(
              '\nTente novamente mais tarde após realizar um depósito em sua conta.\n');

          break;
        } else if (valorDepositado < requestedAmountParse) {
          stdout.writeln('\nTente um valor menor de R\$ $valorDepositado:');
          requestedAmount = stdin.readLineSync().toString();
        } else if (valorDepositado > requestedAmountParse) {
          stdout.writeln(
            '\nSaque realizado com sucesso \n saldo atual: R\$ $saldoRestante',
          );
        }
        break;

      case '2': // DEPÓSITO
        stdout.writeln('\nQual valor você deseja depositar?');
        theAmountDeposited = stdin.readLineSync().toString();
        double? valorDepositado = double.parse(theAmountDeposited.toString());

        if (valorDepositado >= 5001) {
          stdout.writeln(
              '\nNão é permitido realizar depósito acima de R\$5.000,00');
          stdout.writeln('\nFavor digite um valor abaixo ou igual a R\$5.000');
          theAmountDeposited = stdin.readLineSync().toString();
          stdout.writeln('\nO valor depositado foi R\$ $theAmountDeposited');
        } else {
          stdout.writeln('\nO valor depositado foi R\$ $theAmountDeposited');
        }
        break;

      case '3': // EMPRESTIMO
        String? inputLoan;
        stdout.writeln(
            '\nVocê gostaria de verificar a possibilidade de realizar emprestimo?');
        stdout.writeln('\n1- Sim');
        stdout.writeln('2- Não');
        inputLoan = stdin.readLineSync().toString();

        if (inputLoan == '1' &&
            wantInformMonthlyIncome == true &&
            isCreateCurrentAccount == true &&
            getCurrentAccount == true) {
          stdout.writeln(
              '\nParabéns foi liberada a possibilidade de empréstimo \n vamos verificar o valor disponivel.');
          stdout.writeln('\nAguarde um instante...');
          double monthlyIncomeParse = double.parse(monthlyIncome!);
          var limitMax = (70 * monthlyIncomeParse / 100);
          var limitMin = (20 * monthlyIncomeParse / 100);
          stdout.writeln(
              '\nO seu limite máximo para empréstimo é de R\$ $limitMax');
          stdout.writeln(
              '\nO seu limite minimo para empréstimo é de R\$ $limitMin');
          stdout.writeln('\nDigite o valor que você gostaria de emprestar:');
          inputLoan = stdin.readLineSync().toString();
          amountRequestedForLoan = double.parse(inputLoan);

          if (amountRequestedForLoan >= limitMin &&
              amountRequestedForLoan <= limitMax) {
            stdout.writeln(
                '\nO empréstimo no valor de R\$$amountRequestedForLoan foi aceito\n');
          } else {
            stdout.writeln(
                '\nO empréstimo no valor de R\$ $amountRequestedForLoan não foi aceito, tente outro valor abaixo de $limitMax');
            inputLoan = stdin.readLineSync().toString();
            continue;
          }

          amountBorrowedToPay = amountRequestedForLoan;
          break;
        } else if (inputLoan == '1' && wantInformMonthlyIncome == false ||
            isCreateCurrentAccount == false && getCurrentAccount == false) {
          stdout.writeln(
              '\nSinto muito mas você não se qualifica para o empréstimo');
          stdout.writeln(
              '\nUm dos motivos podem ser pela falta da declaração da renda ou não possuir conta corrente.\n');
        }
        if (inputLoan == '2') {
          stdout.writeln('\nEstá bem, vamos finalizar a parte do empréstimo.');
          break;
        }
        selectedMenuInteractive = true;
        break;

      case '4': // RENDIMENTO
        String? simulateThisValue;
        String? simulateDays;
        bool isCurrentAcount =
            (isCreateCurrentAccount == true && getCurrentAccount == true);
        bool notIsCurrentAcount =
            (isCreateCurrentAccount == false && getCurrentAccount == false);
        if (isCurrentAcount == true) {
          stdout.writeln('Este serviço só está disponivel para conta poupança');
        } else if (notIsCurrentAcount == false) {
          stdout.writeln('\nBem vindo à simulação de rendimentos');
          stdout.writeln(
              'Lembrando que este serviço só é valido para conta poupança.\n');
          stdout.writeln('Qual o valor você gostaria de simular?.\n');
          simulateThisValue = stdin.readLineSync().toString();
          stdout
              .writeln('No prazo de quantos dias você gostaria de simular?.\n');
          simulateDays = stdin.readLineSync().toString();
          stdout.writeln('\nOk.');
          stdout.writeln('Aguarde um instante...');
          double valueSimulateInput = double.parse(simulateThisValue);
          int simulateDaysInput = int.parse(simulateDays);

          double simulation = (2 * valueSimulateInput / 100);

          double resultSimulateInput = (simulation * simulateDaysInput);
          double halfTimeSimulation =
              (simulation * simulateDaysInput / 2); // metade do tempo
          double doubleTimeSimulation = (simulation *
              (simulateDaysInput + simulateDaysInput)); // dobro do tempo

          stdout.writeln('Aguarde um instante...');
          stdout.writeln(
              'Com o prazo e valor estipulado o seu dinheiro renderá $resultSimulateInput.');
          stdout.writeln(
              '\nMas também fizemos um calculo extra para demonstração:');
          stdout.writeln('\n- O seu dinheiro renderá R\$$simulation por dia.');
          stdout.writeln(
              '- Com a metade do prazo o seu dinheiro renderá R\$$halfTimeSimulation');
          stdout.writeln(
              '- Com o dobro do prazo o seu dinheiro renderá R\$$doubleTimeSimulation');
          stdout.writeln('\nLembrando que o seu dinheiro rende 2% ao dia.');
          stdout.writeln('\nEstamos finalizando a simulação.\n');
          break;
        }
        break;
      case '5': //Realizar Pagamentos com Débito.
        String? valueToPay; // valor a pagar
        double? valorDepositado = double.parse(theAmountDeposited.toString());
        bool amountIWantToPay = false;
        do {
          stdout.writeln('\nVocê está na área de pagamento');
          stdout.writeln('\nO seu saldo disponivel é: R\$$valorDepositado ');
          stdout.writeln('\nQual valor você deseja pagar?');
          valueToPay = stdin.readLineSync().toString();
          double? valuePayParse = double.parse(valueToPay.toString());
          amountIWantToPay = RegExp(r'^[0-9.]{1,}$').hasMatch(valueToPay);
          if (!amountIWantToPay) {
            print('\nDigite somente números e pontos');
          }
        } while (!amountIWantToPay);
        stdout.writeln('\nO valor solicitado para pagamento é: R\$$valueToPay');

        double requestedAmountParse = double.parse(valueToPay);
        double saldoRestante = (valorDepositado - requestedAmountParse);
        if (valorDepositado == 0.0) {
          stdout.writeln(
              '\nVocê não tem saldo suficiente para essa transação \n saldo atual: R\$ $valorDepositado.');
          stdout.writeln(
              '\nTente novamente mais tarde após realizar um depósito em sua conta.');

          break;
        } else if (valorDepositado < requestedAmountParse) {
          stdout.writeln(
              '\nTente pagar uma connta com o valor abaixo de R\$ $valorDepositado:');
          valueToPay = stdin.readLineSync().toString();
        } else if (valorDepositado > requestedAmountParse) {
          stdout.writeln(
            '\nPagamento realizado com sucesso \n saldo atual: R\$ $saldoRestante',
          );
        }
        break;
      case '6': // PAGAMENTO COM CRÉDITO
        double? valuePayParse;
        String? valueToPayCredit; // valor a pagar
        bool amountIWantToPay = false;
        if (isCardFullValid == false) {
          return stdout.writeln(
            '\nEssa opção só está disponível para quem tem cartão de crédito.\n',
          );
        } else {
          do {
            stdout.writeln('\nVocê está na área de pagamento');
            double limitDisponivel = (limit - amountRequestedForLoan);

            stdout.writeln('\nO seu limite disponível é $limitDisponivel ');
            stdout.writeln('\nQual valor você deseja pagar?');
            valueToPayCredit = stdin.readLineSync().toString();
            valuePayParse = double.parse(valueToPayCredit.toString());
            amountIWantToPay =
                RegExp(r'^[0-9.]{1,}$').hasMatch(valueToPayCredit);
            if (!amountIWantToPay) {
              print('\nDigite somente números e pontos');
            }
          } while (!amountIWantToPay);
          stdout.writeln(
              '\nO valor solicitado para pagamento é: R\$$valuePayParse');
          double limitDisponivel = (limit - amountBorrowedToPay);

          double saldoRestante = (limitDisponivel - valuePayParse);
          if (limitDisponivel == 0.0 || limitDisponivel < 0) {
            stdout.writeln(
                '\nVocê não tem saldo suficiente para essa transação \nsaldo atual: R\$ $limitDisponivel.');
            break;
          } else if (limitDisponivel < valuePayParse) {
            stdout.writeln(
                '\nTente pagar uma connta com o valor abaixo de R\$ $limitDisponivel:');
            valueToPayCredit = stdin.readLineSync().toString();
          } else if (limitDisponivel > valuePayParse) {
            stdout.writeln(
              '\nPagamento realizado com sucesso \nlimite atual: R\$ $saldoRestante\n',
            );
          }
          break;
        }
    }
  } while (selectedMenuInteractive);
}

// 12345678
