/* 
Telefone

Válidos:
  - 12123451234
  - 12 123451234
  - 12 12345-1234
  - (12) 12345-1234

Inválidos:
  - 123451234
  - 12341234
  - 1212341234
*/

class TelephoneValidation {
  static telephoneValidate(
    final String telephone,
  ) {
    if (telephone == null || telephone.trim().isEmpty) {
      return 'This field is required';
    }
    if (!RegExp('([0-9()]{2,4})\ ?([0-9-]{9,10})').hasMatch(telephone)) {
      return 'Fill in your phone correctly';
    } else {
      return null;
    }
  }
}
