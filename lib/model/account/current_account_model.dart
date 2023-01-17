import 'dart:io';
import 'dart:math';

import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  final String? card; //somente débito ou full
  final String? loan; // emprestimo

  CurrentAccountModel(
    this.card,
    this.loan,
  ) : super('', '', '', '', 0, 0.0);

  static bool criarContaCorrente(String numero) {
    int saldo = 0;
    stdout.writeln('\nPor favor anote as suas informações bancarias');
    stdout.writeln('\nA sua agencia é:'); // TODO: ARRUMAR AGENCIA
    stdout.writeln('O código do banco é: 013');
    int conta = Random.secure().nextInt(8000) * (200);
    stdout.writeln('O número da sua conta corrente é: $conta');
    stdout.writeln('\nO saldo da sua conta corrente é: R\$ $saldo');
    return true;
  }
}
