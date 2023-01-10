import 'package:challenge_bank/validation/income_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// CAMINHO TRISTE
  test('deve retornar invalido negativo 1...', () {
    final income = IncomeValidation.incomeMonthy(-1.0);
    expect(income, 'income is invalid');
  });
  test('invalido negativo...', () {
    final income = IncomeValidation.incomeMonthy(-0.0);
    expect(income, 'income is invalid');
  });

  /// CAMINHO FELIZ
  test('deve retornar deve retornar valido "NULL" ...', () {
    final income = IncomeValidation.incomeMonthy(1.0);
    expect(income, null);
  });
  test('deve retornar null..', () {
    final income = IncomeValidation.incomeMonthy(0.0);
    expect(income, null);
  });
  test(' deve retornar null...', () {
    final income = IncomeValidation.incomeMonthy(100.0);
    expect(income, null);
  });

  /// NULL
  test(' deve retornar null...', () {
    final income = IncomeValidation.incomeMonthy(null);
    expect(income, 'is null');
  });
}
