import 'lib/biblioteca.dart';
import 'dart:io';

void menu() {
  print("O que você deseja fazer?");
  print("1 - Adicionar Filme");
  print("2 - Remover Filme");
  print("3 - Listar Filmes");
  print("4 - Criar Documento de Texto");
  print("5 - Sair");
}

void main() {
  List lista = [];
  bool executando = true;

  print("Bem-vindo(a) ao sistema de registro de filmes.");

  while (executando) {
    menu();
    int escolha = inputInt("");

    if (escolha == 1) {
      int quantidade_filmes =
          inputInt("Quantos filmes você deseja registrar?: ");

      for (var i = 0; i < quantidade_filmes; i++) {
        String nome_filme = inputStr("Digite o nome do filme: ");
        int data_lancamento = inputInt("Digite a data de lançamento: ");
        AdicionarFilme filme_adicionado = AdicionarFilme(nome_filme, data_lancamento);

        lista.add(filme_adicionado.to_string());
      }
      print("\x1B[2J\x1B[0;0H");
    } // Fim escolha 1

    else if (escolha == 2) {
      int quantidade_filmes_remover =
          inputInt("Quantos filmes você deseja remover?: ");

      for (var i = 0; i < quantidade_filmes_remover; i++) {
        String nome_filme = inputStr("Digite o nome do filme: ");
        int data_lancamento = inputInt("Digite a data de lançamento: ");

        AdicionarFilme filme_removido =
            AdicionarFilme(nome_filme, data_lancamento);

        lista.remove(filme_removido.to_string());
        print("\x1B[2J\x1B[0;0H");
      }
    } // Fim escolha 2

    else if (escolha == 3) {
      var filme;
      print("\x1B[2J\x1B[0;0H");

      if (lista.length == 0) {
        print("Você não adicionou nenhum filme ainda.\n");
      } else {
        print("Filmes:");
        for (filme in lista) {
          print("\n$filme\n");
        }
      }
    } // Fim escolha 3

    else if (escolha == 4) {
      final file = File('filmes.txt');

      try {
        file.writeAsString(lista.toString());
        print("Documento criado com sucesso!");
      } catch (e) {
        print("Erro: $e");
      }
    } // Fim escolha 5

    else if (escolha == 5) {
      print("Sistema encerrado");
      executando = false;
      print("\x1B[2J\x1B[0;0H");
    } // Fim escolha 4
  }
}

// **Implementar no sistema de remoção**
// Achar uma solução para quando o usuário desejar remover um filme
// Ele digitar apenas o nome, e não o nome e a data de lançamento
// *Talvez* usar DICT

class AdicionarFilme {
  final String nome;
  final int data_lancamento;

  AdicionarFilme(this.nome, this.data_lancamento);

  String to_string() => "Nome: $nome \nData de lançamento: $data_lancamento";
}