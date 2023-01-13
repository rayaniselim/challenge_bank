/* 
Renda Mensal
Válidos:
- 0.01
- null

Inválidos:
- -0.01
*/

import 'dart:io';

class IncomeValidation {
  final bool wantInformMonthlyIncome;

  IncomeValidation({required this.wantInformMonthlyIncome});

  static String? incomeMonthy(String? income) {
    if (income == null) {
      return null;
    }
    if (!RegExp(r'^[\d]+[.][\d]+$').hasMatch(income)) {
      return 'Preencha sua renda corretamente';
    }
    return null;
  }

  static monthyIncomeIsValid() {
    bool monthlyIncomeIsInformed = true;
    bool wantInformMonthlyIncome;
    String? monthlyIncome;
    do {
      stdout.writeln('Digite se gostaria de informar a sua renda:');
      stdout.writeln('\n1- Sim.');
      stdout.writeln('2- Não.');

      final wantInformMonthlyIncomeString = stdin.readLineSync();
      if (wantInformMonthlyIncomeString == null ||
          wantInformMonthlyIncomeString.trim().isEmpty) {
        stdout.writeln('Digite a sua opçao\n');

        continue;
      }

      if (wantInformMonthlyIncomeString != '1' &&
          wantInformMonthlyIncomeString != '2') {
        stdout.writeln('Opção inválida\n');
        continue;
      }

      wantInformMonthlyIncome = wantInformMonthlyIncomeString == '1';

      switch (wantInformMonthlyIncome) {
        case true:
          var monthlyIncomeIsValid = false;
          do {
            stdout.writeln('\nFavor digite a sua renda:');
            monthlyIncome = stdin.readLineSync().toString();

            monthlyIncomeIsValid =
                RegExp(r'^[0-9.]{2,}$').hasMatch(monthlyIncome);
            if (!monthlyIncomeIsValid) {
              print('\nDigite somente números e pontos');
            }
          } while (!monthlyIncomeIsValid);

          stdout.writeln('\nA renda digitada é: R\$ $monthlyIncome');
          break;
        case false:
          stdout.writeln('\nSua renda não será informada');
          break;
      }

      monthlyIncomeIsInformed = true;
    } while (!monthlyIncomeIsInformed);
  }
}
