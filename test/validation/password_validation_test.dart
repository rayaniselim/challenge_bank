import 'package:challenge_bank/validation/password_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('password validation deve retornar vazio...', () {
    final password = PasswordValidation.passwordValidate('');
    expect(password, 'This field is required');
  });

  test('password validation deve retornar menor que 8 caracteres...', () {
    final password = PasswordValidation.passwordValidate('1234567');
    expect(password, 'Password must be 8 numeric characters');
  });

  test('password validation deve retornar caracteres invalidos...', () {
    final password = PasswordValidation.passwordValidate('as#%as12');
    expect(password, 'Password must be 8 numeric characters');
  });

  /// caminho feliz
  test('password validation deve retornar null', () {
    final password = PasswordValidation.passwordValidate('01234567');
    expect(password, null);
  });

  test('password validation deve retornar null.', () {
    final password = PasswordValidation.passwordValidate('12345678');
    expect(password, null);
  });
}
