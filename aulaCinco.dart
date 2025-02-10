// Metodos e Classes

void main() {
  Celular celular_um = Celular("Azul", 5, 5.7, 0.800);

  Celular celular_dois = Celular("Preto", 10, 5.7, 0.100);

  // print("celular_um -> COR: $celular_um.cor");
  print(celular_um.to_string());
  print(celular_dois.to_string());

  // print("Valor do celular_um: ${celular_um.valor_do_celular(1000)}");

  double resultado = celular_um.valor_do_celular(1000);
  print(resultado);
}

class Celular {
  final String cor;
  final int quantidade_processadores;
  final double tamanho;
  final double peso;

  // "Final" passa a responsabilidade de eles receberem valores para o nosso construtor

  // Construtor (Deve ter o nome da classe)
  Celular(this.cor, this.quantidade_processadores, this.tamanho, this.peso);

  // Método para retornar os objetos em string
  String to_string() {
    return "Cor: $cor, Quantidade de processadores: $quantidade_processadores, Tamanho: $tamanho, Peso: $peso";
  }

  double valor_do_celular(double valor) {
    return valor * quantidade_processadores;
  }
}