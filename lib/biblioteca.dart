import "dart:io";

/* ======================================================== 
   Biblioteca ESPraDart - Entrada e Saída Práticas em Dart 
   Versão 0.1 – 10 de março de 2024 
   Instituto Federal do Paraná - IFPR 
   Centro de referência Biopark, Campus Assis Chateaubriand 
   Curso Técnico de Informática para a Internet 
   Componente Curricular de Lógica de Programação 
   Docentes: Humberto Fioravante e Sergio Ferrazoli
   ========================================================= */

String inputStr(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna uma String 
  digitada pelo usuario */
  stdout.write(msg);
  String txt = stdin.readLineSync()!;
  return txt;
}

int inputInt(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número inteiro
  digitado pelo usuario */
  stdout.write(msg);
  int numInt = int.parse(stdin.readLineSync()!);
  return numInt;
}

double inputDouble(String msg) {
  /* Esta função escreve a mensagem "msg" na tela e retorna um número real
  digitado pelo usuario */
  stdout.write(msg);
  double numDouble = double.parse(stdin.readLineSync()!);
  return numDouble;
}

void main() {
  /* Este programa é um exemplo de aplicação das seguintes funções:
      inputStr: usada para o usuário informar uma string
      inputInt: usada para o usuário informar um número inteiro
      inputDouble: usada para o usuário informar um número real
  */
  print("Olá, caro usuário!");
  String nmPessoa = inputStr("Qual é o seu nome? ");
  print('Muito prazer em te conhecer, $nmPessoa!');
  int num1 = inputInt("$nmPessoa, digite um numero por favor: ");
  print('$nmPessoa, você digitou o número $num1');
  double vlSal = inputDouble("$nmPessoa, qual eh o seu salario? ");
  double vlImp = 0.2 * vlSal;
  print(
    "$nmPessoa, você ganha $vlSal reais e pagara $vlImp reais de impostos!",
  );
}
