/* 
Renda Mensal
Válidos:
- 0.01
- null

Inválidos:
- -0.01
*/

class IncomeValidation {
  static String? incomeMonthy(String? income) {
    if (income == null) {
      return null;
    }
    if (!RegExp(r'^[\d]+[.][\d]+$').hasMatch(income)) {
      return 'Preencha sua renda corretamente';
    }
    return null;
  }
}
