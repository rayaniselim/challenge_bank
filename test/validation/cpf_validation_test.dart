import 'package:app_bank/validation/cpf_validation.dart';
import 'package:test/test.dart';

void main() {
  /// CAMINHO TRISTE

  test('o 042.427.230-94 deve retornar false', () {
    final first = CpfValidation.validarCpf('04242723094');
    print(first);
    expect(first, false);
  });

  test('o  358.768.060-09 deve retornar false', () {
    final first = CpfValidation.validarCpf('35876806009');
    print(first);
    expect(first, false);
  });

  test('o 595.956.930-34 deve retornar false', () {
    final first = CpfValidation.validarCpf('59595693034');
    print(first);
    expect(first, false);
  });
  // CAMINHO FELIZ

  test('o cpf 529.982.247-25 deve retornar true', () {
    final cpfTest = CpfValidation.validarCpf('52998224725');
    expect(cpfTest, true);
  });

  test('o cpf 049.427.230-94 deve retornar true', () {
    final cpfTest = CpfValidation.validarCpf('04942723094');
    expect(cpfTest, true);
  });

  test('o cpf 358.760.060-09 deve retornar true', () {
    final cpfTest = CpfValidation.validarCpf('35876006009');
    expect(cpfTest, true);
  });

  test('o cpf 595.956.630-34 deve retornar true', () {
    final cpfTest = CpfValidation.validarCpf('59595663034');
    expect(cpfTest, true);
  });
}
