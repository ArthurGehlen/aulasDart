// Mapas (Dictionaries)

void main() {
  // List<String> lista = ["Arthur", "Gehlen"];

  // print(lista);

  Map mapa = {"Nome": "Arthur", "Idade": 14};

  // Adicionando Elementos ao mapa
  // Forma 1:
  mapa.putIfAbsent("Sobrenome", () => "Gehlen");

  // Forma 2:
  mapa["novaChaveDois"] = "novoValorDois";
  print(mapa);
  print(mapa["Nome"]);

  // Remoção de elementos do mapa
  mapa.remove("Nome");
  print(mapa);

  // Atualização
  mapa["novaChaveDois"] = "Atualizado";
  print(mapa);

  mapa.update("novaChaveDois", (value) => "atualizadoDois");
  print(mapa);

  mapa.forEach((chave, valor) => print("A chave é $chave, o valor é $valor"));

  mapa.keys.forEach(print);
  mapa.values.forEach(print);
}
