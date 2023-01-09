/* 
Número do cartão

MasterCard                  51, 52, 53, 54, 55              16-19
Visa                        4                               13-16
Visa Electron               4026, 417500, 4508, 4844, 4913, 16
                            4917    
*/
// import 'dart:io';

class NumberCardValidation {
  static String mastercadValidate(final String numberMaster) {
    // print('Qual é o número do cartão?');
    // String? numberCard = stdin.readLineSync();
    if (numberMaster.isEmpty || numberMaster == null) {
      return 'Please enter your number card';
    }
    if (!RegExp(r'^5\d{15}(\d{1,3})?$').hasMatch(numberMaster)) {
      return 'O cartao mastercard está incorreto';
    }
    return 'Is valid';
  }

  static String visaValidate(final String numberVisa) {
    // print('Qual é o número do cartão?');
    // String? numberCard = stdin.readLineSync();
    if (numberVisa.isEmpty || numberVisa == null) {
      return 'Please enter your number card';
    }
    if (!RegExp(r'^4\d{12}(\d{1,3})?$').hasMatch(numberVisa)) {
      return 'O cartao visa está incorreto';
    }
    return 'Is valid';
  }
}
