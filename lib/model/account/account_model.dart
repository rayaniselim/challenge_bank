abstract class AccountModel {
// Ambas contas podem sacar, depositar um valor na conta

  final String withdraw; // saque
  final String deposit;
  final String agency;
  final String bank;
  final int accountNumber;
  final double balance; // saldo

  AccountModel(
    this.withdraw,
    this.deposit,
    this.agency,
    this.bank,
    this.accountNumber,
    this.balance,
  );
}
