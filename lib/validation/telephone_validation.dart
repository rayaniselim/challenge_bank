class TelephoneValidation {
  static String? telephoneValidate(String? telephone) {
    if (telephone == null || telephone.isEmpty) {
      return 'This field is required';
    }
    if (!RegExp(r'^[(]?[1-9]{2}[)]?\ ?([0-9]{4,5}\-?[0-9]{4})$')
        .hasMatch(telephone)) {
      return 'Fill in your phone correctly';
    } else {
      return null;
    }
  }
}



/// bool 
/// 
