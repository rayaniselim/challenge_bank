import 'dart:io';

/* 
Data de Validade do cartão
Válidos:
- `Maior que a data atual`

Inválidos:
- `Menor igual a data atual`
*/

class ExpirationValidation {
  String? monthString;
  String? yearString;

  DateTime getCardDate() {
    print('Qual é o mês de validade do cartão?');
    String? monthString = stdin.readLineSync();
    monthString ??= '0.0'; // Se o valor vier nulo ele vai preencher 0.0
    final convertedMonth = double.parse(
        monthString); // TODO: verificar se após a conversao o teste valida

    // String monthString = '02';
    print('Mes: $monthString');
    print('Qual é o ano de validade do cartão?');
    String? yearString = stdin.readLineSync();
    // String yearString = '2023';
    print('Ano: $yearString');

    return DateTime.parse('$yearString-$monthString-01');
  }

  /// TODO: Arrumar o retorno bool
  bool expirationDateValid(DateTime expiration) {
    DateTime dateCard = DateTime.parse('$yearString-$monthString-01');
    dateCard.isAfter(DateTime.now());
    return true;
  }
}
