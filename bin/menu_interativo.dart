import 'dart:io';

class MenuInteractive {
  static bool menuInteractive(String? inputMenuInteractive) {
    bool selectedMenuInteractive = true;
    do {
      stdout.writeln('Selecione o número da opção que deseja:\n');
      stdout.writeln('1- Saque.');
      stdout.writeln('2- Depósito.');
      stdout.writeln('3- Empréstimo.');
      stdout.writeln('4- Rendimentos.');
      stdout.writeln('5- Realizar Pagamentos com Débito.');
      stdout.writeln('6- Realizar Pagamentos com Crédito.');
      inputMenuInteractive = stdin.readLineSync().toString();
      if (inputMenuInteractive == null || inputMenuInteractive.trim().isEmpty) {
        stdout.writeln('\nDigite a sua opçao\n');
      } else {
        if (inputMenuInteractive != '1' &&
            inputMenuInteractive != '2' &&
            inputMenuInteractive != '3' &&
            inputMenuInteractive != '4' &&
            inputMenuInteractive != '5' &&
            inputMenuInteractive != '6') {
          stdout.writeln('\nOpção inválida\n');
          stdout.writeln('\nDigite um número de 1 a 6:\n');
          inputMenuInteractive = stdin.readLineSync().toString();
          continue;
        }
      }
    } while (selectedMenuInteractive);
  }
}
