import 'address_model.dart';

class UserModel {
  final String name;
  final String cpf;
  final String telephone;
  final String email;
  final String password;
  final AddressModel address;
  final String? income; // renda

  UserModel(
    this.name,
    this.cpf,
    this.email,
    this.password,
    this.telephone,
    this.address,
    this.income,
  );
}
