import 'dart:io';
import 'dart:math';
import 'package:app_bank/validation/name_validation.dart';

class CardModel {
  final int number;
  final int cvv;
  final String flag; // bandeira
  final String name;
  final String expirationDate;

  CardModel({
    required this.number,
    required this.cvv,
    required this.flag,
    required this.name,
    required this.expirationDate,
  });

  /// TODO: fazer o model do cartao de débito

//   static CardModel() {
//     var flag = 'Visa';
//     int cvv = Random.secure().nextInt(800) * (200);
//     var expirationDate = '2033-01-14';
//     String name = NameValidation.nameIsValid();
//     int number = Random.secure().nextInt(800) * (1000);
//     ;
//     final card = CardModel(
//       flag: flag,
//       cvv: cvv,
//       expirationDate: expirationDate,
//       name: name,
//       number: number,
//     );

//     stdout.writeln('\nPor favor anote as suas informações do seu cartão');
//     stdout.writeln('\nA bandeira é: $flag');
//     print(cvv);
//     stdout.writeln('O código cvv do seu cartão é: $cvv');
//     number = Random.secure().nextInt(8000) * (200);
//     stdout.writeln('O número da sua conta poupança é: $number');
//   }
//   /*
// Ao selecionar o cartão, ele deverá ser criado com as seguintes regras
//   * A Bandeira deve ser um nome a sua escolha
//   * O Número deve ser auto gerado
//   * A Validade deve ser de 10 anos
//   * O cvv deve ser auto gerado
//   * O nome do dono deve ser o mesmo informado na hora da criação da conta
// */
}
