import 'card_model.dart';

class CardFullModel extends CardModel {
  final double limit;
  final double spent;

  CardFullModel(
    super.number,
    super.cvv,
    super.flag,
    super.name,
    super.expirationDate,
    this.limit,
    this.spent,
  );
}
