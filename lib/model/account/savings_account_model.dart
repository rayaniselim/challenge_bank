import 'account_model.dart';

class SavingsAccountModel extends AccountModel {
  // Poupança

  final String? cardDebit; //somente débito
  final double income; // rendimento %

  SavingsAccountModel(
    this.cardDebit,
    this.income,
  ) : super('', '', '', '', 0, 0.0);
}
