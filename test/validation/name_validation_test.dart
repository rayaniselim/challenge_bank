import 'package:app_bank/validation/name_validation.dart';
import 'package:test/test.dart';

void main() {
  /// CAMINHO TRISTE

  test('name validation deve retornar true ou vazio', () {
    final name = NameValidation.nameValidate('');
    expect(name, false);
  });

  test('name validation deve retornar errado', () {
    final name = NameValidation.nameValidate('an aa');
    expect(name, false);
  });

  test('name validation deve retornar errado pois tem numero', () {
    final name = NameValidation.nameValidate('Ana Whatever 2');
    expect(name, false);
  });
  test('name validation deve retornar errado pois tem espaço no final', () {
    final name =
        NameValidation.nameValidate('Whatever Whatever Whatever Whatever ');
    expect(name, false);
  });

  /// CAMINHO FELIZ

  test('name validation deve retornar true pois tem 4 nomes', () {
    final name =
        NameValidation.nameValidate('Whatever Whatever Whatever Whatever');
    expect(name, true);
  });
  test('name validation deve retornar true porque está certo', () {
    final name = NameValidation.nameValidate('Ana Whatever');
    expect(name, true);
  });

  test('name validation deve retornar true', () {
    final name = NameValidation.nameValidate('Rayani Selim');
    expect(name, true);
  });
}
