import 'package:app_bank/validation/password_validation.dart';
import 'package:test/test.dart';

void main() {
  /// CAMINHO TRISTE

  test('password validation deve retornar vazio', () {
    final password = PasswordValidation.passwordValidate('');
    expect(password, false);
  });

  test('password validation deve retornar um espaço em branco', () {
    final password = PasswordValidation.passwordValidate(' ');
    expect(password, false);
  });

  test('password validation deve retornar menor que 8 caracteres', () {
    final password = PasswordValidation.passwordValidate('1234567');
    expect(password, false);
  });

  test('password validation deve retornar invalido com 9 caracteres', () {
    final password = PasswordValidation.passwordValidate('123456789');
    expect(password, false);
  });

  test('password validation deve retornar caracteres invalidos', () {
    final password = PasswordValidation.passwordValidate('as#%as12');
    expect(password, false);
  });

  /// CAMINHO FELIZ
  test(
      'password validation deve retornar valido com espaço no final, porque a regex vai remover',
      () {
    final password = PasswordValidation.passwordValidate('01234567');
    expect(password, true);
  });
  test('password validation deve retornar true', () {
    final password = PasswordValidation.passwordValidate('01234567');
    expect(password, true);
  });

  test('password validation deve retornar true 8 caracteres.', () {
    final password = PasswordValidation.passwordValidate('12345678');
    expect(password, true);
  });
}
