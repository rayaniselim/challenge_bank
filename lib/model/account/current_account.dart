import 'account_model.dart';

class CurrentAccount extends AccountModel {
  final double agency;
  final String bank;
  final double accountNumber;
  final double balance; // saldo
  final String? cardDebit; //somente débito
  final String? cardFull; // débito e crédito,
  final String? loan; // emprestimo

  CurrentAccount(
    super.transfers,
    super.withdraw,
    super.deposit,
    this.agency,
    this.bank,
    this.accountNumber,
    this.balance,
    this.cardDebit,
    this.cardFull,
    this.loan,
  );
}
