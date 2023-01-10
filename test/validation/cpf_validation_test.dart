import 'package:challenge_bank/validation/cpf_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  /// CAMINHO TRISTE

  // test('o FirstDigit  deveria retornar TRUE', () {
  //   String cpf = '04942723094';
  //   final first = CpfValidation.validFirstDigit(cpf);
  //   print(first);
  //   expect(first, true);
  // });

  // CAMINHO FELIZ
  test('o FirstDigit  deve retornar false', () {
    String cpf = '04942723094';
    final first = CpfValidation.validFirstDigit(cpf[9]);
    expect(first, cpf[9] == 0);
  });

  test('o SecondtDigit deve retornar false', () {
    String cpf = '04942723094';
    final second = CpfValidation.validSecondDigit(cpf[10]);
    expect(second, cpf[10] == 0);
  });

  test('o cpf 049.427.230-94 deve retornar true', () {
    String cpf = '04942723094';
    final cpfTest = CpfValidation.validarCpf(cpf);
    expect(cpfTest, true);
  });

  test('o cpf 358.760.060-09 deve retornar true', () {
    String cpf = '35876006009';
    final cpfTest = CpfValidation.validarCpf(cpf);
    expect(cpfTest, true);
  });

  test('o cpf 595.956.630-34 deve retornar true', () {
    String cpf = '59595663034';
    final cpfTest = CpfValidation.validarCpf(cpf);
    expect(cpfTest, true);
  });
}
