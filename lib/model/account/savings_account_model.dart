import 'dart:io';
import 'dart:math';

import 'account_model.dart';

class SavingsAccountModel extends AccountModel {
  final String? cardDebit; //somente débito
  final double income; // rendimento %

  SavingsAccountModel({
    required String withdraw, // saque
    required String deposit,
    required String agency,
    required String bank,
    required int accountNumber,
    required double balance,
    this.cardDebit,
    required this.income,
  }) : super(
          withdraw,
          deposit,
          agency,
          bank,
          accountNumber,
          balance,
        );

  static criarContaPoupanca(String numero) {
    var saldo = r'R$ 0.00';
    stdout.writeln('\nPor favor anote as suas informações bancarias');
    stdout.writeln('\nA sua agencia é:');
    stdout.writeln('O código do banco é: 013');
    var conta = Random.secure().nextInt(8000) * (200);
    stdout.writeln('O número da sua conta poupança é: $conta');
    stdout.writeln('\nO saldo da sua conta poupança é: $saldo');

    /// mostrar cartao
  }
}
