import 'package:challenge_bank/validation/email_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('email validation deve retornar null ...', () {
    final email = EmailValidation.emailValidate('');
    expect(email, 'Please enter your email address');
  });

  test('email validation deve retornar invalido ...', () {
    final email = EmailValidation.emailValidate('whatever@gov.uk');
    expect(email, 'Please enter a valid email address');
  });

  test('email validation deve retornar invalido, comeca com numero ...', () {
    final email = EmailValidation.emailValidate('1whatever@outlook.com');
    expect(email, 'Please enter a valid email address');
  });
  test('email validation deve retornar invalido, caracteres invalidos ...', () {
    final email = EmailValidation.emailValidate('whatever#@!@gmail.com');
    expect(email, 'Please enter a valid email address');
  });

  test('email validation deve retornar invalido, tem numeros ...', () {
    final email = EmailValidation.emailValidate('whatever@outlook2com1br');
    expect(email, 'Please enter a valid email address');
  });

  /// caminho feliz

  test('email validation deve retornar  valid..', () {
    final email = EmailValidation.emailValidate('whatever@outlook.com.br');
    expect(email, 'Is Valid');
  });
  test('email validation deve retornar valid...', () {
    final email = EmailValidation.emailValidate('what_ever@outlook.com');
    expect(email, 'Is Valid');
  });
  test('email validation deve retornar valid   ', () {
    final email = EmailValidation.emailValidate('whatever@gmail.com');
    expect(email, 'Is Valid');
  });
  test('email validation deve retornar valid..', () {
    final email = EmailValidation.emailValidate('what.ever@gmail.com.br');
    expect(email, 'Is Valid');
  });

  test('email validation deve retornar valid', () {
    final email = EmailValidation.emailValidate('what.ever@gmail.com');
    expect(email, 'Is Valid');
  });

  test('email validation deve retornar valid.', () {
    final email = EmailValidation.emailValidate('whatever@hotmail.com.br');
    expect(email, 'Is Valid');
  });

  test('email validation deve retornar  valid', () {
    final email = EmailValidation.emailValidate('Whatever@hotmail.com.br');
    expect(email, 'Is Valid');
  });

  test('email validation deve retornar valid..', () {
    final email = EmailValidation.emailValidate('w23hatever@hotmail.com.br');
    expect(email, 'Is Valid');
  });
}
