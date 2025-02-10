void main() {
  String variavel_nome = "Arthur";
  int valor_variavel = 10;
  bool eh_verdadeiro = true;

  List<String> lista_de_palavras = [
    "Arthur",
    "Gehlen"
  ]; // Array Apenas de String

  List<int> lista_de_numeros = [1, 2, 3, 4, 5];

  List lista = [2, 3, 4, 2.3, "oi"]; // Array de todos os tipos de dados

  print(variavel_nome);
  print(valor_variavel);
  print(eh_verdadeiro);
  print(lista_de_palavras);
  print(lista_de_palavras[0]);
  print("${lista_de_palavras[0]} - ${lista_de_palavras[1]}");
  print(lista_de_numeros);
  print(lista);
}
