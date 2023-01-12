import 'account_model.dart';

class CurrentAccountModel extends AccountModel {
  final String? card; //somente débito ou full
  final String? loan; // emprestimo

  CurrentAccountModel(
    this.card,
    this.loan,
  ) : super('', '', '', '', 0, 0.0);
}
