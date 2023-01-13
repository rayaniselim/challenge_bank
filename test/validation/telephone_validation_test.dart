import 'package:app_bank/validation/telephone_validation.dart';
import 'package:test/test.dart';

void main() {
  /// CAMINHO TRISTE

  test('telephone validation deve retornar vazio', () {
    final String telefoneValid = '';
    final telephoneTrue = TelephoneValidation.telephoneValidate(telefoneValid);
    expect(telephoneTrue, false);
  });

  test('telephone validation deve retornar incorreto com 8 digitos', () {
    bool teste = TelephoneValidation.telephoneValidate('12123451');
    expect(teste, false);
  });

  test('telephone validation deve retornar incorreto com espaço em outra parte',
      () {
    bool teste = TelephoneValidation.telephoneValidate('6121230 451');
    expect(teste, false);
  });

  test('telephone validation deve retornar incorreto com caracteres', () {
    bool teste = TelephoneValidation.telephoneValidate('6612129#3451');
    expect(teste, false);
  });

  test(
      'telephone validation deve retornar incorreto quando comecar com 0 e terminar com --',
      () {
    bool teste = TelephoneValidation.telephoneValidate('02123451--');
    expect(teste, false);
  });

  test(
      'telephone validation deve retornar incorreto quando comecar com 0 e o ddd for 3',
      () {
    bool teste = TelephoneValidation.telephoneValidate('065999991111');
    expect(teste, false);
  });

  test('telephone validation deve retornar incorreto quando comecar com 0 ',
      () {
    bool teste = TelephoneValidation.telephoneValidate('05999991111');
    expect(teste, false);
  });

  test('telephone validation deve retornar invalid usando letra', () {
    bool teste = TelephoneValidation.telephoneValidate('12a123451234');
    expect(teste, false);
  });

  test('telephone validation deve retornar invalid usando ponto', () {
    bool teste = TelephoneValidation.telephoneValidate('1212345.1234');
    expect(teste, false);
  });

  test('telephone validation deve retornar TRUE', () {
    bool teste = TelephoneValidation.telephoneValidate('12 123451234 aadas');
    expect(teste, false);
  });

  /// CAMINHO FELIZ

  test('telephone validation deve retornar TRUE', () {
    bool teste = TelephoneValidation.telephoneValidate('65981749688');
    expect(teste, true);
  });

  test('telephone validation deve retornar true usando espaço', () {
    bool teste = TelephoneValidation.telephoneValidate('12 123451234');
    expect(teste, true);
  });

  test('telephone validation deve retornar true usando espaço -', () {
    bool teste = TelephoneValidation.telephoneValidate('12 12345-1234');
    expect(teste, true);
  });

  test('telephone validation deve retornar true usando () -', () {
    bool teste = TelephoneValidation.telephoneValidate('(12) 12345-1234');
    expect(teste, true);
  });

  test('telephone validation deve retornar true usando ()', () {
    bool teste = TelephoneValidation.telephoneValidate('(12) 123451234');
    expect(teste, true);
  });

  test('telephone validation deve retornar true usando (', () {
    bool teste = TelephoneValidation.telephoneValidate('(12)123451234');
    expect(teste, true);
  });
}
