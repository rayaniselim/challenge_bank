// import 'dart:io';

/*
Data de Validade do cartão
Válidos:
- `Maior que a data atual`

Inválidos:
- `Menor igual a data atual`
*/

// // class ExpirationValidation {
// //   String? monthString;
// //   String? yearString;

// main() {
//   // DateTime getCardDate() {
//   print('Qual é o mês de validade do cartão?');
//   String? monthString = stdin.readLineSync();
//   // monthString ??= '0.0'; // Se o valor vier nulo ele vai preencher 0.0
/// TODO: verificar se após a conversao o teste valida
//   !RegExp('[0-9]{1-2}').hasMatch(monthString!);
//   final convertedMonth = double.parse(monthString);
//   // String monthString = '02';
//   print('Mes: $convertedMonth');

//   print('Qual é o ano de validade do cartão?');
//   String? yearString = stdin.readLineSync();
//   // String yearString = '2023';
//   !RegExp('[0-9]{4}').hasMatch(yearString!);
//   print('Ano: $yearString');

//   // return DateTime.parse('$yearString-$monthString-01');

/// TODO: Arrumar o retorno bool
//   bool expirationDateValid(DateTime expiration) {
//     DateTime dateCard = DateTime.parse('$yearString-$monthString-01');
//     return dateCard.isAfter(DateTime.now());
//   }

//   return (expirationDateValid).toString();
// }

class ExpirationValidation {
  static String? expirationDateValid(String? dateCard) {
    DateTime? month;
    DateTime? year;
    // DateTime dateCard = DateTime.parse('$year-$month-01');
    String dateCard = ('$year-$month-01');
    // String dateCardString = dateCard.toString();
    DateTime dateCardParse = DateTime.parse(dateCard);

    if (dateCard == null || dateCard.isEmpty) {
      return 'This field is required';
    } else if (!RegExp('[\d]{2}[-/][\d]{4}').hasMatch(dateCard)) {
      return 'Coloque a data no formato 0000-00 ano e mes';
    } else if (dateCardParse.isAfter(DateTime.now())) {
      return 'Cartão valido'; // null
    } else {
      return 'Cartão invalido';
    }
  }
}
