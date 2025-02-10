void main() {
  // Filho filho = Filho();
  // print(filho.falar());

  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  void pagar() {
    print("Pagando com boleto");
  }
}

class PagarComPix implements Pagamento {
  void pagar() {
    print("Pagamento com Pix");
  }
}

// class Pai {
//   String falar() {
//     return "Ta";
//   }
// }

// class Filho extends Pai {}

// abstract class Pessoa {
//   String comunicar();
// }

// class Pessoa_et implements Pessoa {
//   String comunicar() {
//     return "Ola, Mundo!";
//   }
// }

// class Pessoa_nao_et implements Pessoa {
//   String comunicar() {
//     return "Bom dia!";
//   }
// }