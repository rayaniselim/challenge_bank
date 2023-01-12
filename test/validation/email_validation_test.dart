import 'package:app_bank/validation/email_validation.dart';
import 'package:test/test.dart';

void main() {
  /// CAMINHO TRISTE

  test('email validation deve retornar null', () {
    final email = EmailValidation.emailValidate('');
    expect(email, 'Please enter your email address');
  });

  test('email validation deve retornar invalido', () {
    final email = EmailValidation.emailValidate('whatever@gov.uk');
    expect(email, 'Please enter a valid email address');
  });

  test('email validation deve retornar invalido, comeca com numero', () {
    final email = EmailValidation.emailValidate('1whatever@outlook.com');
    expect(email, 'Please enter a valid email address');
  });
  test('email validation deve retornar invalido, caracteres invalidos ', () {
    final email = EmailValidation.emailValidate('whatever#@!@gmail.com');
    expect(email, 'Please enter a valid email address');
  });

  test('email validation deve retornar invalido, tem numeros', () {
    final email = EmailValidation.emailValidate('whatever@outlook2com1br');
    expect(email, 'Please enter a valid email address');
  });

  /// CAMINHO FELIZ

  test('email validation deve retornar valid', () {
    final email = EmailValidation.emailValidate('whatever@outlook.com.br');
    expect(email, null);
  });
  test('email com _ deve retornar valid', () {
    final email = EmailValidation.emailValidate('what_ever@outlook.com');
    expect(email, null);
  });
  test('email deve retornar valid', () {
    final email = EmailValidation.emailValidate('whatever@gmail.com');
    expect(email, null);
  });

  test('o email com . e .br deve retornar valid', () {
    final email = EmailValidation.emailValidate('what.ever@gmail.com.br');
    expect(email, null);
  });

  test('o email com . deve retornar valid', () {
    final email = EmailValidation.emailValidate('what.ever@gmail.com');
    expect(email, null);
  });

  test('email abaixo deve retornar valid', () {
    final email = EmailValidation.emailValidate('whatever@hotmail.com.br');
    expect(email, null);
  });

  test('o email com letra maiúscula deve retornar valid', () {
    final email = EmailValidation.emailValidate('Whatever@hotmail.com.br');
    expect(email, null);
  });

  test('o email abaixo deve retornar valido', () {
    final email = EmailValidation.emailValidate('w23hatever@hotmail.com.br');
    expect(email, null);
  });
}
