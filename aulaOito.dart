// Future, Async e Await

void main() async {
  // Formulário
  String nome = "Arthur";
  Future<String> cep_future = get_cep_by_name("Rua JK");
  late String cep;

  // cep_future.then((result) => cep = result);

  cep = await cep_future;

  print(nome);
  print(cep);
}

// Exterrnal Service
Future<String> get_cep_by_name(String name) {
  // Simulando requisição
  return Future.value("868338000");
}
