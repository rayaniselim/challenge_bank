abstract class AccountModel {
// Ambas contas podem fazer transferências, sacar, depositar um valor na conta
  final String transfers;
  final String withdraw; // saque
  final String deposit;

  AccountModel(
    this.transfers,
    this.withdraw,
    this.deposit,
  );
}
