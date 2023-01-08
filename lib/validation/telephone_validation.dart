class TelephoneValidation {
  static String? telephoneValidate(final String telephone) {
    if (telephone.isEmpty || telephone == null) {
      return 'This field is required';
    }
    if (!RegExp('([0-9()]{2,4})\ ?([0-9-]{9,10})').hasMatch(telephone)) {
      return 'Fill in your phone correctly';
    } else {
      return 'Is valid';
    }
  }
}
