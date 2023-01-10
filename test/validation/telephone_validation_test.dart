import 'package:challenge_bank/validation/telephone_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// CAMINHO TRISTE

  test('telephone validation deve retornar vazio', () {
    final String telefoneValid = '';
    final telephoneTrue = TelephoneValidation.telephoneValidate(telefoneValid);
    expect(telephoneTrue, 'This field is required');
  });

  test('telephone validation deve retornar incorreto com 8 digitos', () {
    String? teste = TelephoneValidation.telephoneValidate('12123451');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar incorreto com espaço em outra parte',
      () {
    String? teste = TelephoneValidation.telephoneValidate('6121230 451');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar incorreto com caracteres', () {
    String? teste = TelephoneValidation.telephoneValidate('6612129#3451');
    expect(teste, 'Fill in your phone correctly');
  });

  test(
      'telephone validation deve retornar incorreto quando comecar com 0 e terminar com --',
      () {
    String? teste = TelephoneValidation.telephoneValidate('02123451--');
    expect(teste, 'Fill in your phone correctly');
  });

  test(
      'telephone validation deve retornar incorreto quando comecar com 0 e o ddd for 3',
      () {
    String? teste = TelephoneValidation.telephoneValidate('065999991111');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar incorreto quando comecar com 0 ',
      () {
    String? teste = TelephoneValidation.telephoneValidate('05999991111');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar invalid usando letra', () {
    String? teste = TelephoneValidation.telephoneValidate('12a123451234');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar invalid usando ponto', () {
    String? teste = TelephoneValidation.telephoneValidate('1212345.1234');
    expect(teste, 'Fill in your phone correctly');
  });

  test('telephone validation deve retornar TRUE', () {
    String? teste = TelephoneValidation.telephoneValidate('12 123451234 aadas');
    expect(teste, 'Fill in your phone correctly');
  });

  /// CAMINHO FELIZ

  test('telephone validation deve retornar TRUE', () {
    String? teste = TelephoneValidation.telephoneValidate('12123451234');
    expect(teste, null);
  });

  test('telephone validation deve retornar true usando espaço', () {
    String? teste = TelephoneValidation.telephoneValidate('12 123451234');
    expect(teste, null);
  });

  test('telephone validation deve retornar true usando espaço -', () {
    String? teste = TelephoneValidation.telephoneValidate('12 12345-1234');
    expect(teste, null);
  });

  test('telephone validation deve retornar true usando () -', () {
    String? teste = TelephoneValidation.telephoneValidate('(12) 12345-1234');
    expect(teste, null);
  });

  test('telephone validation deve retornar true usando ()', () {
    String? teste = TelephoneValidation.telephoneValidate('(12) 123451234');
    expect(teste, null);
  });

  test('telephone validation deve retornar true usando (', () {
    String? teste = TelephoneValidation.telephoneValidate('(12)123451234');
    expect(teste, null);
  });
}
