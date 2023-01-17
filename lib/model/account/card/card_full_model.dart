import 'dart:io';
import 'dart:math';

import 'card_model.dart';

class CardFull extends CardModel {
  final double limit;
  final double spent;

  CardFull(
    super.number,
    super.cvv,
    super.flag,
    super.name,
    super.expirationDate,
    this.limit,
    this.spent,
  );
  static bool cardFullMethod(String wantInformName) {
    String flag = 'Visa';
    int cvv = Random.secure().nextInt(8) * (20);
    String expirationDate = '2033-01';
    wantInformName = wantInformName;
    int number = Random.secure().nextInt(999999999) * (999999999);

    stdout.writeln('\nPor favor anote as informações do seu Cartão de Crédito');
    stdout.writeln('\nO nome no cartão será: $wantInformName');
    stdout.writeln('\nA bandeira é: $flag');
    stdout.writeln('\nO código cvv do seu cartão é: $cvv');
    stdout.writeln('\nO número do seu cartão é: $number');
    stdout.writeln('\nO validade do seu cartão é: $expirationDate');
    return true;
  }
}
