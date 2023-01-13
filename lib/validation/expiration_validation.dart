class ExpirationValidation {
  static String? expirationDateValid(String? dateCard) {
    if (dateCard == null || dateCard.isEmpty) {
      return 'Esse campo é requerido';
    }
    if (!RegExp(r'^[0-9]{4}[-][0-9]{1,2}$').hasMatch(dateCard!)) {
      return 'Coloque a data no formato 0000-00 ano e mes';
    }
    final dateInt = dateCard.split('-');
    String yearString = dateInt[0];
    int year = int.parse(yearString);
    String monthString = dateInt[1];
    int month = int.parse(monthString);
    int day = 01;
    DateTime dateCardParse = DateTime(year, month, day);
    if (dateCardParse.isAfter(DateTime.now())) {
      return null;
    } else {
      return 'Date invalid';
    }
  }
}
