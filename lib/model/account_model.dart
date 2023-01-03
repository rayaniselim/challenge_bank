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

abstract class CardModel {
  final double number;
  final double cvv;
  final String flag; // bandeira
  final String name;
  final String expirationDate;

  CardModel(this.number, this.cvv, this.flag, this.name, this.expirationDate);
}

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
