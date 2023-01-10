/* 
CPF
Válidos:
  - 049.427.230-94
  - 358.760.060-09
  - 595.956.630-34

Inválidos:
  - 042.427.230-94
  - 358.768.060-09
  - 595.956.930-34

Regra:  
Dígitos comuns = 049.427.230  
Dígitos validadores = 94
*/

class CpfValidation {
  static validFirstDigit(String cpf) {
    final String cpf = '04942723094';
    num soma = 0;

    for (var numIncial = 0; numIncial < 9; numIncial++) {
      String cpfIndex = cpf[numIncial];
      int cpfInt = int.parse(cpfIndex);
      int resultadoMultiplier = (11 - numIncial);
//  Somar o resultado da multiplicação pela ordem decrescente de 10 a 2;
      soma += cpfInt * resultadoMultiplier;
//  Multiplicar o resultado do passo 1 por 10 e posteriormente dividir por 11.
      double resultDivider = soma / 11;
      if (resultDivider < 10) {
        return cpf[9] == resultDivider;
      }
      return cpf[9] == 0;
// Caso o resto seja igual a 10 este deverá ser considerado como 0.
    }
  }

  static validSecondDigit(String second) {
    final String cpf = '04942723094';
    num soma = 0;

    for (var numIncial = 0; numIncial < 9; numIncial++) {
      String cpfIndex = cpf[numIncial];
      int cpfInt = int.parse(cpfIndex);
      int resultadoMultiplier = (11 - numIncial);
// Somar o resultado da multiplicação dos 10 primeiros dígito pela ordem decrescente de 11 a 2;
// considerar os 9 dígitos  + o digito já validado, interando um total de 10 algarismos para o calculo.
      soma += cpfInt * resultadoMultiplier;
// Multiplicar o resultado do passo 1, multiplicar por 10 e posteriormente dividir por 11.
      double resultDivider = soma / 11;
      if (resultDivider < 10) {
        return cpf[10] == resultDivider;
      }
      return cpf[10] == 0;
    }
  }

/* Passo 3:  
      O décimo primeiro digito será válido caso o resultado do passo 2 seja igual ao décimo primeiro digito.*/
  static validarCpf(String cpf) {
    if (validFirstDigit(cpf)) {
      return false;
    }
    if (validSecondDigit(cpf)) {
      return false;
    }
    return true;
  }
}
