// // import 'package:args/args.dart';
// // import 'dart:convert';
// import 'dart:io';

// import '../validation/name_validation.dart';

// /*
// ## Passo 1 
// Deve ser inserido na seguinte ordem:
//   * Nome
//   * Email
//   * Telefone
//   * CPF
//   * Senha
//   * Endereço
//     * CEP
//     * Rua
//     * Bairro
//     * Cidade
//     * Estado
//     * Número
//     * Complemento
//   * Renda mensal
// */

// // stdout	A saída padrão
// // stderr	O erro padrão
// // stdin	A entrada padrão
// void main() {
// // String? pegarNome(String name) {
//   stdout.writeln('Digite o seu nome completo'); // ln faz a quebra de linha
//   final inputName = stdin.readLineSync().toString();
//   stdout.writeln('O nome digitado é: $inputName');

//   String? validationName = NameValidation.nameValidate(inputName);
//   print(validationName);

//   while (validationName != null) {}
// }
