import 'dart:io';
import 'dart:math';

import 'package:app_bank/model/account/card/card_model.dart';

import '../account_model.dart';

class CardDebitoModel extends CardModel {
  CardDebitoModel(
    super.number,
    super.cvv,
    super.flag,
    super.name,
    super.expirationDate,
  );

  static bool cardDebito(String wantInformName) {
    String flag = 'Mastercard';
    int cvv = Random.secure().nextInt(8) * (20);
    String expirationDate = '2033-01';

    int number = Random.secure().nextInt(999999999) * (999999999);
    stdout.writeln('\nPor favor anote as informações do seu Cartão de Débito');
    stdout.writeln('\nO nome no cartão será: $wantInformName');
    stdout.writeln('\nA bandeira é: $flag');
    stdout.writeln('\nO código cvv do seu cartão é: $cvv');
    stdout.writeln('\nO número do seu cartão é: $number');
    stdout.writeln('\nO validade do seu cartão é: $expirationDate');
    stdout.writeln('\nO valor do saldo é: R\$0.00 ');
    return true;
  }
}
