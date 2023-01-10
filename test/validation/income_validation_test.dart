import 'package:challenge_bank/validation/income_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// CAMINHO TRISTE
  test('deve retornar invalido negativo 1', () {
    final income = IncomeValidation.incomeMonthy('-1.0');
    expect(income, 'Preencha sua renda corretamente');
  });
  test('valor invalido pois está negativo', () {
    final income = IncomeValidation.incomeMonthy('-0.0');
    expect(income, 'Preencha sua renda corretamente');
  });

  /// CAMINHO FELIZ
  test('o valor 1.0 deve retornar null', () {
    final income = IncomeValidation.incomeMonthy('1.0');
    expect(income, null);
  });
  test('o valor 0.0 deve retornar null', () {
    final income = IncomeValidation.incomeMonthy('0.0');
    expect(income, null);
  });
  test('o valor 100.0 deve retornar null', () {
    final income = IncomeValidation.incomeMonthy('100.0');
    expect(income, null);
  });

  /// NULL
  test('deve retornar null', () {
    final income = IncomeValidation.incomeMonthy(null);
    expect(income, null);
  });
}
