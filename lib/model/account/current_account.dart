import 'account_model.dart';

class CurrentAccount extends AccountModel {
  final String? card; //somente débito ou full
  final String? loan; // emprestimo

  CurrentAccount(
    this.card,
    this.loan,
  ) : super('', '', '', '', '', 0, 0.0);
}
