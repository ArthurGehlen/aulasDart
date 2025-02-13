void main() { 
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.PIX);
}

enum TipoPagamento {
  // PIX, BOLETO, CARTAO;

  PIX(1, 'PIX'),
  BOLETO(2, 'BOLETO'), 
  CARTAO(3, 'CARTAO');

  final String value;
  final int ID;
  const TipoPagamento(this.ID, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == 'Pix') {
      print('Pagando com o PIX ${tipoPagamento.ID}');
    }
    else if (tipoPagamento.value == 'Boleto') {
      print('Pagando com o BOLETO ${tipoPagamento.ID}');
    }
    else {
      print('Pagando com o CARTÃO ${tipoPagamento.ID}');
    }
  }
}