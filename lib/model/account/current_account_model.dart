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

  static criarContaCorrente(String numero) {
    int saldo = 0;
    stdout.writeln('Por favor anote as suas informações bancarias');
    stdout.writeln('A sua agencia é:');
    stdout.writeln('O código do banco é: 013');
    var conta = Random.secure().nextInt(8000) * (200);
    stdout.writeln('O número da sua conta corrente é: $conta');
    stdout.writeln('O saldo da sua conta corrente é: R\$ $saldo');
/*
    * escolher o tipo do cartão
    * Caso ele tenha enviado uma renda mensal, deve ter a opção de crédito.
    * Caso não tenha, o cartão só poderá ser de débito.
*/
    /// mostrar cartao
  }

  static cartaoCredito() {
    print('cartao de credito método');

    /// chamar o while getRenda se for == true
    /// liberar a funcao crédito
    /// se nao, liberar somente o cartao de débito
  }

  static cartaoDebito() {
    print('cartao de debito da conta corrente');

    /// liberar somente o cartao de débito
  }
}
