abstract class AccountModel {
// Ambas contas podem fazer transferências, sacar, depositar um valor na conta
  final String transfers; // transformar em métodos
  final String withdraw; // saque
  final String deposit;
  final String agency;
  final String bank;
  final int accountNumber;
  final double balance; // saldo

  AccountModel(
    this.transfers,
    this.withdraw,
    this.deposit,
    this.agency,
    this.bank,
    this.accountNumber,
    this.balance,
  );
}
