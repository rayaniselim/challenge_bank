/* 
Email

Válidos:
  - whatever@outlook.com.br
  - what_ever@outlook.com
  - whatever@gmail.com
  - what.ever@gmail.com.br
  - what.ever@hotmail.com
  - whatever@hotmail.com.br
  - Whatever@hotmail.com.br
  - w23hatever@hotmail.com.br

Inválidos:
  - whatever@gov.uk
  - 1whatever@outlook.com
  - whatever$#@!@gmail.com
  - whatever@outlook2com1br

*/

class EmailValidation {
  static String? EmailValidate(
    final String email,
  ) {
    if (email.trim().isEmpty) {
      return 'Please enter your email address';
    }
    if (!RegExp(
            r'^[a-zA-Z_.0-9]+@((hotmail)|(outlook)|(gmail)).((com)).?((br))?')
        .hasMatch(email)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
}
