/* 
Renda Mensal
Válidos:
- 0.01
- null

Inválidos:
- -0.01
*/

class IncomeValidation {
  static String? incomeMonthy(double? income) {
    String incomeParse = income.toString();
    final String? nullIncome = null;
    if (income == null) {
      return 'is null';
    } else if (income.isNegative) {
      return 'income is invalid';
    }
    if (!RegExp('[0-9.]+').hasMatch(incomeParse)) {
      return 'Preencha sua renda corretamente';
    }
    return null;
  }
}
