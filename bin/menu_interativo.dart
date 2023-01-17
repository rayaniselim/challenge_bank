import 'dart:io';

/*
Caso a conta seja poupança, o dinheiro pode render.
  * [OBS] Não deve ser alterado o valor, apenas mostrado quanto renderia em X tempo.
  * Deve ser enviado uma quantidade de dias.
  * Baseado nesse tempo, devem ser feitos 3 cálculos.
    * Metade do tempo
    * Tempo alvor
    * Dobro do tempo.
  * O dinheiro rende 2% ao dia.

*/

bool yield(String? inputMenuInteractive) {
  bool savingsAccountIncome = true; // rendimento da conta poupança
  String? simulateThisValue;
  String? simulateDays;
  do {
// Caso a conta seja poupança, o dinheiro pode render.
    stdout.writeln('\nBem vindo à simulação de rendimentos');
    stdout.writeln(
        'Lembrando que este serviço só é valido para conta poupança.\n');
    stdout.writeln('Qual o valor você gostaria de simular?.\n');
    simulateThisValue = stdin.readLineSync().toString();
    stdout.writeln('No prazo de quantos dias você gostaria de simular?.\n');
    simulateDays = stdin.readLineSync().toString();
    stdout.writeln('\nOk.');
    stdout.writeln('Aguarde um instante...');
    double valueSimulateInput = double.parse(simulateThisValue);
    int simulateDaysInput = int.parse(simulateDays);

    double simlation = (2 * valueSimulateInput / 100);
    double resultSimulateInput = (simlation * simulateDaysInput);

    double halfTimeSimulation =
        (simlation * simulateDaysInput / 2); // metade do tempo

    double doubleTimeSimulation =
        (simlation * simulateDaysInput * 2); // dobro do tempo

    stdout.writeln('Aguarde um instante...');
    stdout.writeln(
        'Com o prazo e valor estipulado o seu dinheiro renderá $resultSimulateInput.');

    stdout.writeln('\nMas também fizemos um calculo extra para demonstração:');
    stdout.writeln(
        '\nCom a metade do prazo o seu dinheiro renderá $halfTimeSimulation.');
    stdout.writeln(
        'Com o dobro do prazo o seu dinheiro renderá $doubleTimeSimulation.');

    stdout.writeln('\nLembrando que o seu dinheiro rende 2% ao dia.');
    stdout.writeln('\nEstamos finalizando a simulação\n.');
  } while (savingsAccountIncome);
}
