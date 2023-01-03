import 'account_model.dart';

class SavingsAccount extends AccountModel {
  // Poupança
  final double agency;
  final String bank;
  final double accountNumber;
  final double balance; // saldo
  final String? cardDebit; //somente débito
  final double income; // rendimento %

  SavingsAccount(
    super.transfers,
    super.withdraw,
    super.deposit,
    this.agency,
    this.bank,
    this.accountNumber,
    this.balance,
    this.cardDebit,
    this.income,
  );
}
