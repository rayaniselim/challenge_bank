import 'dart:io';

import 'package:challenge_bank/validation/telephone_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('telephone validation deve retornar vazio  ...', () {
    final String telefoneValid = '';
    final telephoneTrue = TelephoneValidation.telephoneValidate(telefoneValid);

    expect(telephoneTrue, 'This field is required');
  });

  test('telephone validation deve retornar incorreto ...', () {
    String? teste = TelephoneValidation.telephoneValidate('12123451');

    expect(teste, 'Fill in your phone correctly');
  });

  /// CAMINHO FELIZ

  test('telephone validation deve retornar TRUE ...', () {
    String? teste = TelephoneValidation.telephoneValidate('12123451234');

    expect(teste, 'Is valid');
  });
  test('telephone validation deve retornar true usando espaço ...', () {
    String? teste = TelephoneValidation.telephoneValidate('12 123451234');

    expect(teste, 'Is valid');
  });

  test('telephone validation deve retornar true usando - ...', () {
    String? teste = TelephoneValidation.telephoneValidate('12 12345-1234');

    expect(teste, 'Is valid');
  });
  test('telephone validation deve retornar true usando () - ...', () {
    String? teste = TelephoneValidation.telephoneValidate('(12) 12345-1234');

    expect(teste, 'Is valid');
  });
}
