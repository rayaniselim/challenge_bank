import 'dart:io';

/* 
Data de Validade do cartão
Válidos:
- `Maior que a data atual`

Inválidos:
- `Menor igual a data atual`
*/

class ExpirationValidation {
  expirationDateValid() {
    print('Qual é o mês de validade do cartão?');
    String? monthString = stdin.readLineSync();
    // String monthString = '02';
    print('Mes: $monthString');
    print('Qual é o ano de validade do cartão?');
    String? yearString = stdin.readLineSync();
    // String yearString = '2023';
    print('Ano: $yearString');

    if (monthString != null) {
      if (!RegExp('[0-9]{2}').hasMatch(monthString)) {
        return print('Coloque o mes no formato 01');
      }
      if (!RegExp('[0-9]{4}').hasMatch(yearString ?? '000')) {
        return print('Coloque o ano no formato 0000');
      } else {
        DateTime dateCard = DateTime.parse('$yearString-$monthString-01');
        if (dateCard.isAfter(DateTime.now())) {
          return print('cartao valido');
        } else {
          return print('Cartao invalido');
        }
      }
    }
  }
}
