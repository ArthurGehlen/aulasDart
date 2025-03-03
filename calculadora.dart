import 'lib/biblioteca.dart';

// A calculadora terá apenas 4 operações básicas (soma, subtração, multiplicação e divisão).
// A calculadora deverá realizar operações apenas entre dois fatores (números).
// O usuário deve fornecer tanto os números quanto a operação que deve ser realizada.
// Deve existir um método que faz o cálculo baseado no operador digitado pelo usuário.
// Você deverá construir uma forma de capturar parâmetros digitados pelo usuário na execução do programa. Por exemplo: 2 x 10.

void main() {
  Calculadora calculadora = Calculadora();
  calculadora.start();
}

class Calculadora {
  double first_value = 0;
  double second_value = 0;
  double result = 0;
  String operator = '';

  bool operator_is_valid(String symbol) {
    bool is_valid = false;

    if (symbol == '+' || symbol == '-' || symbol == 'x' || symbol == '/') {
      return true;
    } else {
      return is_valid;
    }
  }

  double calculate() {
    if (operator == '+') {
      return result = first_value + second_value;
    }
    if (operator == '-') {
      return result = first_value - second_value;
    }
    if (operator == 'x') {
      return result = first_value * second_value;
    }
    if (operator == '/') {
      return result = first_value / second_value;
    } else {
      return result;
    }
  }

  String show() {
    return '$first_value $operator $second_value = $result';
  }

  void start() {
    while (true) {
      String user_input = inputStr(
        "Digite a conta (utilize apenas 2 números): ",
      );
      List count = user_input.split(' ');

      if (operator_is_valid(count[1])) {
        first_value = double.parse(count[0]);
        operator = count[1];
        second_value = double.parse(count[2]);
        calculate();
        print(show());
        break;
      }
    }
  }
}
