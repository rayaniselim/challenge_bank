import 'dart:io';

/* 
Data de Validade do cartão
Válidos:
- `Maior que a data atual`

Inválidos:
- `Menor igual a data atual`
*/

class ExpirationValidation {
  DateTime getCardDate() {
    print('Qual é o mês de validade do cartão?');
    String? monthString = stdin.readLineSync();
    // String monthString = '02';
    print('Mes: $monthString');
    print('Qual é o ano de validade do cartão?');
    String? yearString = stdin.readLineSync();
    // String yearString = '2023';
    print('Ano: $yearString');

    return DateTime.parse('$yearString-$monthString-01');
  }

  // bool expirationDateValid(DateTime expiration) {
  //   DateTime dateCard = DateTime.parse('$yearString-$monthString-01');
  //   dateCard.isAfter(DateTime.now());
  //   return true;
  // }
}
