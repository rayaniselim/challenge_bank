import '../account_model.dart';

class SavingsAccountModel extends AccountModel {
  final String? cardDebit; //somente débito
  final double income; // rendimento %

  SavingsAccountModel({
    required String withdraw, // saque
    required String deposit,
    required String agency,
    required String bank,
    required int accountNumber,
    required double balance,
    this.cardDebit,
    required this.income,
  }) : super(
          withdraw,
          deposit,
          agency,
          bank,
          accountNumber,
          balance,
        );
}
