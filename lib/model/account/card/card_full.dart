import 'card_model.dart';

class CardFull extends CardModel {
  final double limit;
  final double spent;

  CardFull(
    super.number,
    super.cvv,
    super.flag,
    super.name,
    super.expirationDate,
    this.limit,
    this.spent,
  );
}
