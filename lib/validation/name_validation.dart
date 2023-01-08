/* 
Nome Completo

Válidos:
  - Ana Whatever

Inválidos:
  - An
  - Ana
  - Ana Whatever 2
*/

class NameValidation {
  static String? nameValidate(
    // TODO: COLOCAR INPUT

    String name,
  ) {
    if (name.isEmpty ||
        !RegExp(r'([a-zA-Z]{3,6})\ +([a-zA-Z]{3,6})\ ?([a-zA-Z]{0,10})')
            .hasMatch(name)) {
      return 'Enter correct name';
    } else {
      return null;
    }
  }
}
