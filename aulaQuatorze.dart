void main() {
  Exercicios exercicios = Exercicios();
  // exercicios.exer1(11, 14);  
  // exercicios.exer2(114, 12, 133);  
  exercicios.exer3(1000);  
}

class Exercicios {

  void exer1(int n1, int n2) {
    print(n1 == n2 ? 'Números iguais' : n1 > n2 ? '$n1 maior' : '$n2 maior');
  }

  void exer2(int n1, int n2, int n3) {
    print(n1 == n2 && n2 == n3 ? 'Números iguais' : 
          n1 > n2 && n1 > n3 ? '$n1 maior' : 
          n2 > n1 && n2 > n3 ? '$n2 maior' : '$n3 maior');
  }

  void exer3(double salario) {
    double novo_salario = 0;
    double quantidade_de_aumento = 0;
    double porcentagem_de_aumento = 0;

    salario <= 280 ? porcentagem_de_aumento = 0.20 : 
    salario > 280 && salario <= 700 ? porcentagem_de_aumento = 0.15 :
    salario > 700 && salario <= 1500 ? porcentagem_de_aumento = 0.10 : 
    porcentagem_de_aumento = 0.05;

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
}