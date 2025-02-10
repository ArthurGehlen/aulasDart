// Progrmação Orientada a Objetos (POO)

void main() {
  // Classe | nome do elemento =
  Carro mercedes = Carro("Mercedes");
  // Carro gol = Carro("Gol");

  print(mercedes.valor_do_carro);

  // mercedes.valor_do_carro = 10; **Deu erro pois não é um "setter", ou seja, não pode trocar este valor
  mercedes.set_value(2000); // Assim deu certo

  print(mercedes.valor_do_carro);

 
}

class Carro {
  final String modelo;

  // Quando tem "_" no iníco do nome da variável, é porque a variável é privada
  // String _segredo = "Muito Dinheiro";

  int _valor = 1000;

  // Isto vai fazer com que o usuário possa saber este valor, mas, não poderá trocar (GETTER)
  int get valor_do_carro => _valor;

  // Agora permitimos que o valor possa ser modificado (SETTER)
  void set_value(int valor) => _valor = valor;

  // A forma acima é uma forma de atalho para escrever uma função que retornará algo simples 
  // Como se escreve: returnType functionName(parameters) => expression; | returnType = Tipo de retorno da variável (String, double, Int) | functionName = Nome da função | parameters = parametros para função, ou seja criar variáveis para serem usadas | e a expressão, o que aquela variável vai retornar

  Carro(this.modelo);
}
