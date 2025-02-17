import 'dart:io';

void main() {
  Exercicios exercicios = Exercicios();
  // exercicios.exer1(11, 14);
  // exercicios.exer2(114, 12, 133);
  // exercicios.exer3(1000);
  // exercicios.exer4(10);
  // exercicios.exer5(30);
  // exercicios.exer6(5);
  // exercicios.exer7(2028);
  // exercicios.exer8(4);
  exercicios.exer9(2, 3, 1);
}

class Exercicios {
  void exer1(int n1, int n2) {
    print(n1 == n2
        ? 'Números iguais'
        : n1 > n2
            ? '$n1 maior'
            : '$n2 maior');
  }

  void exer2(int n1, int n2, int n3) {
    print(n1 == n2 && n2 == n3
        ? 'Números iguais'
        : n1 > n2 && n1 > n3
            ? '$n1 maior'
            : n2 > n1 && n2 > n3
                ? '$n2 maior'
                : '$n3 maior');
  }

  void exer3(double salario) {
    double novo_salario = 0;
    double quantidade_de_aumento = 0;
    double porcentagem_de_aumento = 0;

    salario <= 280
        ? porcentagem_de_aumento = 0.20
        : salario > 280 && salario <= 700
            ? porcentagem_de_aumento = 0.15
            : salario > 700 && salario <= 1500
                ? porcentagem_de_aumento = 0.10
                : porcentagem_de_aumento = 0.05;

    quantidade_de_aumento = salario * porcentagem_de_aumento;
    novo_salario = salario + quantidade_de_aumento;

    salario.toString();
    novo_salario.toString();
    quantidade_de_aumento.toString();

    print('Salario antes do reajuste: ${salario.toStringAsFixed(2)}');
    print('Percentual de aumento aplicado: ${porcentagem_de_aumento * 100}%');
    print('Valor do aumento: ${quantidade_de_aumento.toStringAsFixed(2)}');
    print('Salario Novo: ${novo_salario.toStringAsFixed(2)}');
  }

  void exer4(int n) {
    // Faça um programa que leia um valor n, inteiro e positivo, calcule e mostre a seguinte soma: S = 1 + 1/2 + 1/3 + 1/4 + … + 1/n
    double sum = 0;
    for (double i = 1; i <= n; i++) {
      sum += 1 / i;
    }
    sum.toString();
    print(sum.toStringAsFixed(2));
  }

  void exer5(int square_size) {
    // Escreva um programa que lê o tamanho do lado de um quadrado e imprime um quadrado daquele tamanho com asteriscos.
    // Seu programa deve usar laços de repetição e funcionar para quadrados com lados de todos os tamanhos entre 1 e 20.

    for (int i = 1; i <= square_size; i++) {
      print('');
      for (int j = 1; j <= square_size; j++) {
        stdout.write('*');
      }
    }
  }

  void exer6(int n) {
    // Faça um programa para calcular n! (Fatorial de n), sendo que o valor inteiro de n é fornecido pelo usuário.
    // Sabe-se que: N! = 1 * 2 * 3 * … (n – 1) * n 0! = 1, por definição

    int fatorial = 1;
    for (int i = 1; i <= n; i++) {
      fatorial *= i;
    }
    print(fatorial);
  }

  void exer7(int age) {
    // Faça um Programa que peça um número correspondente a um determinado ano e em seguida informe se este ano e ou não bissexto.
    age % 4 == 0 && age % 100 != 0
        ? print('$age é um ano bissexto')
        : print('$age não é um ano bissexto');
  }

  void exer8(int n) {
    // Faça um Programa que peça um número inteiro e determine se ele e par ou ímpar.
    n % 2 == 0 ? print('$n é par') : print('$n não é par');
  }

  void exer9(int n1, int n2, int n3) {
    // Faça um programa que leia três números e mostre-os em ordem decrescente.
    List<int> nums = [n1, n2, n3];

    nums.sort((b, a) => a.compareTo(b));
    print(nums);
  }
}
