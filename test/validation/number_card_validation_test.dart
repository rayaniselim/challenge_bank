import 'package:app_bank/validation/number_card_validation.dart';
import 'package:test/test.dart';

void main() {
  ///          CAMINHO TRISTE
  /// MASTERCARD
  test('number card Mastercard retorna errado 20 digitos', () {
    final number =
        NumberCardValidation.mastercardValidate('51234567891234567890');
    expect(number, 'O cartao mastercard está incorreto');
  });

  test('number card Mastercard retorna errado 14 digitos começa com 4', () {
    final number = NumberCardValidation.mastercardValidate('41234567890123');
    expect(number, 'O cartao mastercard está incorreto');
  });

  /// VISA
  test('number card VISA retorna errado 14 digitos começa com 5', () {
    final number = NumberCardValidation.visaValidate('51234567890123');
    expect(number, 'O cartao visa está incorreto');
  });
  test('number card VISA retorna errado 12 digitos', () {
    final number = NumberCardValidation.visaValidate('412345678901');
    expect(number, 'O cartao visa está incorreto');
  });

  ///       CAMINHO FELIZ
  /// MASTERCARD
  test('number card Mastercard validation valido com 16', () {
    final number = NumberCardValidation.validateCards('5123456789123456');
    expect(number, null);
  });

  test('number card Mastercard validation valido com 17', () {
    final number = NumberCardValidation.mastercardValidate('51234567891234567');
    expect(number, null);
  });
  test('number card Mastercard validation valido com 18', () {
    final number =
        NumberCardValidation.mastercardValidate('512345678912345678');
    expect(number, null);
  });
  test('number card Mastercard validation valido com 19', () {
    final number = NumberCardValidation.mastercardValidate('51252587123423456');
    expect(number, null);
  });

  /// VISA

  test('number card VISA validation valido com 16', () {
    final number = NumberCardValidation.validateCards('4123456789123456');
    expect(number, null);
  });

  test('number card VISA validation valido com 15', () {
    final number = NumberCardValidation.visaValidate('412345678912345');
    expect(number, null);
  });

  test('number card VISA validation valido com 14', () {
    final number = NumberCardValidation.visaValidate('41234567891234');
    expect(number, null);
  });

  test('number card VISA validation valido com 13', () {
    final number = NumberCardValidation.visaValidate('4123456789123');
    expect(number, null);
  });
}
