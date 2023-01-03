abstract class CardModel {
  final String number;
  final int cvv;
  final String flag; // bandeira
  final String name;
  final String expirationDate;

  CardModel(
    this.number,
    this.cvv,
    this.flag,
    this.name,
    this.expirationDate,
  );
}
