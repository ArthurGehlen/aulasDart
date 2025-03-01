import 'dart:ffi';
import 'dart:io';
import 'dart:math';

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
  // exercicios.exer9(2, 3, 1);
  // exercicios.exer10(1);
  // exercicios.exer11(2, 5, 10);
  // exercicios.exer12(1.70, 'homem');
  // exercicios.exer13(4, 1.75, 3);
  // exercicios.exer14(5);
  // print(exercicios.exer15(2));
  // exercicios.exer16('D');
  exercicios.exer17(0, 0, 0);
}

class Exercicios {
  void exer1(int n1, int n2) {
    print(
      n1 == n2
          ? 'Números iguais'
          : n1 > n2
          ? '$n1 maior'
          : '$n2 maior',
    );
  }

  void exer2(int n1, int n2, int n3) {
    print(
      n1 == n2 && n2 == n3
          ? 'Números iguais'
          : n1 > n2 && n1 > n3
          ? '$n1 maior'
          : n2 > n1 && n2 > n3
          ? '$n2 maior'
          : '$n3 maior',
    );
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

  //Faça uma função que recebe por parâmetro o raio de uma esfera e calcula o seu volume (v = 4/3.P .R3).
  void exer10(double r) {
    double v = 4 / 3 * 3.14 * pow(r, 3);
    v.toString();
    print(v.toStringAsFixed(2));
  }

  // Faça uma função que recebe a idade de uma pessoa em anos, meses e dias e retorna essa idade expressa em dias.
  void exer11(int years, int months, int days) {
    print((years * 365) + (months * 30) + days);
  }

  // 12. Faça uma função que recebe, por parâmetro, a altura (alt) e o sexo de uma pessoa e retorna o seu peso ideal.
  // Para homens, calcular o peso ideal usando a fórmula peso ideal = 72.7 x alt – 58 e,
  // para mulheres, peso ideal = 62.1 x alt – 44.7.
  void exer12(double height, String gender) {
    double weight = 0;
    print(
      gender == 'mulher'
          ? weight = (62.1 * height) - 44.7
          : gender == 'homem'
          ? weight = (72.7 * height) - 58
          : '',
    );
  }

  // Escreva um procedimento que recebes 3 valores reais X, Y e Z e que verifique se esses valores podem ser os comprimentos dos lados de um triângulo e,
  // neste caso, retornar qual o tipo de triângulo formado. Para que X, Y e Z formem um triângulo é
  // necessário que a seguinte propriedade seja satisfeita: o comprimento de cada lado de um triângulo é
  // menor do que a soma do comprimento dos outros dois lados. O procedimento deve identificar o tipo de triângulo
  //formado observando as seguintes definições:
  // Triângulo Equilátero: os comprimentos dos 3 lados são iguais.
  // Triângulo Isósceles: os comprimentos de 2 lados são iguais.
  // Triângulo Escaleno: os comprimentos dos 3 lados são diferentes.
  void exer13(double x, double y, double z) {
    print(
      x == y && y == z
          ? 'Triângulo Equilátero'
          : x == y || y == z
          ? 'Triângulo Isósceles'
          : 'Triângulo Escaleno',
    );
  }

  // Faça um programa que recebe a altura de um triangulo em um número inteiro e imprima-o utilizando asteriscos.
  void exer14(int height) {
    for (int i = 0; i <= height; i++) {
      print(' ');
      for (int j = 0; j <= height - i - 1; j++) {
        stdout.write('*');
      }
    }
  }

  // Faça uma função que recebe por parâmetro um valor inteiro e positivo e retorna o valor lógico Verdadeiro
  // caso o valor seja primo e Falso em caso contrário.
  bool exer15(double num) {
    if (num < 2) {
      return false;
    }

    for (int i = 2; i <= sqrt(num); i++) {
      if (num % i == 0) {
        return false;
      }
    }

    return true;
  }

  // O algoritmo deve mostrar na tela as notas, a média, o conceito correspondente e a mensagem “APROVADO”
  // se o conceito for A, B ou C “REPROVADO” se o conceito for D ou E.
  void exer16(String conceito) {
    print(
      conceito == 'A' || conceito == 'B' || conceito == 'C'
          ? 'APROVADO'
          : 'REPROVADO',
    );
  }
  
  // Faça um programa que calcule as raízes de uma equação do segundo grau, na forma ax2 + bx + c.
  // O programa deverá pedir os valores de a, b e c e fazer as consistências, informando ao usuário nas seguintes situações:  
  // a. Se o usuário informar o valor de A igual a zero. a equação não e do segundo grau e o programa não deve fazer pedir os demais valores, sendo encerrado;
  // b. Se o delta calculado for negativo, a equação não possui raízes reais. Informe ao usuário e encerre o programa;
  // c. Se o delta calculado for igual a zero a equação possui apenas uma raiz real; informe ao usuário;
  // d. Se o delta for positivo, a equação possui duas raízes reais; informe-as ao usuário;   
  
  // Fórmula do DELTA: delta = b² - 4ac
  void exer17(double a, double b, double c) {
    double delta = pow(b, 2) - 4 * a * c;

    if(delta < 0) {
      print('A equação não possui raízes reais.');
    }
    else if(delta == 0) {
      print('A equação possui apenas uma raiz real.');
      double raiz = (-b + sqrt(delta)) / (2 * a);
      print(raiz);
    }
    else {
      print('A equação possui duas raízes reais.');
      double raiz1 = (-b + sqrt(delta)) / (2 * a);
      double raiz2 = (-b - sqrt(delta)) / (2 * a);
      print(raiz1);
      print(raiz2);
    }
  }
}
