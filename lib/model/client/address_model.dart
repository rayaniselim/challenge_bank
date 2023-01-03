class AddressModel {
  final String street;
  final String district;
  final String city;
  final String state;
  final String number;
  final String cep;
  final String? complement;

  AddressModel(
    this.street,
    this.district,
    this.city,
    this.state,
    this.number,
    this.cep,
    this.complement,
  );
}
