import 'package:challenge_bank/validation/expiration_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('expiration validation retornar invalido por causa do dia', () {
    final expiration = ExpirationValidation.expirationDateValid('2024-12-01');
    expect(expiration, 'Coloque a data no formato 0000-00 ano e mes');
  });
  test('expiration validation retornar invalido porque contém /', () {
    final expiration = ExpirationValidation.expirationDateValid('2024/12');
    expect(expiration, 'Coloque a data no formato 0000-00 ano e mes');
  });
  test('expiration validation retornar invalido porque não tem o -', () {
    final expiration = ExpirationValidation.expirationDateValid('2024 12');
    expect(expiration, 'Coloque a data no formato 0000-00 ano e mes');
  });

  test('expiration validation retornar data invalida, porque está antiga', () {
    final expiration = ExpirationValidation.expirationDateValid('2022-12');
    expect(expiration, 'Date invalid');
  });

  /// CAMINHO FELIZ

  test('expiration validation retornar valido', () {
    final expiration = ExpirationValidation.expirationDateValid('2024-12');
    expect(expiration, null);
  });

  test('expiration validation retornar valido com 1 numero do mes', () {
    final expiration = ExpirationValidation.expirationDateValid('2024-1');
    expect(expiration, null);
  });
}
