import 'package:challenge_bank/validation/name_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('name validation deve retornar null ou vazio ...', () {
    final name = NameValidation.nameValidate('');
    expect(name, 'This field is required');
  });

  test('name validation deve retornar errado ...', () {
    final name = NameValidation.nameValidate('an aa');
    expect(name, 'Enter correct name');
  });

  test('name validation deve retornar errado pois tem numero ...', () {
    final name = NameValidation.nameValidate('Ana Whatever 2');
    expect(name, 'Enter correct name');
  });
  test('name validation deve retornar errado pois tem espaço no final ...', () {
    final name =
        NameValidation.nameValidate('Whatever Whatever Whatever Whatever ');
    expect(name, 'Enter correct name');
  });

  /// Caminho feliz

  test('name validation deve retornar null pois tem 4 ...', () {
    final name =
        NameValidation.nameValidate('Whatever Whatever Whatever Whatever');
    expect(name, null);
  });
  test('name validation deve retornar null porque está certo ...', () {
    final name = NameValidation.nameValidate('Ana Whatever');
    expect(name, null);
  });

  test('name validation deve retornar null  ...', () {
    final name = NameValidation.nameValidate('Rayani Selim');
    expect(name, null);
  });
}
