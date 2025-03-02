import 'lib/biblioteca.dart';

// A calculadora terá apenas 4 operações básicas (soma, subtração, multiplicação e divisão).
// A calculadora deverá realizar operações apenas entre dois fatores (números).
// O usuário deve fornecer tanto os números quanto a operação que deve ser realizada.
// Deve existir um método que faz o cálculo baseado no operador digitado pelo usuário.
// Você deverá construir uma forma de capturar parâmetros digitados pelo usuário na execução do programa. Por exemplo: 2 x 10.

void main() {
  Calculadora calculadora = Calculadora();
  calculadora.get_data();
  calculadora.calculate();
  print(calculadora.show());
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

  bool value_is_valid(double value) {
    if (value >= -100 && value <= 100) {
      return true;
    }
    return false;
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

  void get_data() {
    while (true) {
      double user_value1 = inputDouble('Digite o primeiro número entre -100 e 100: ');
      if (value_is_valid(user_value1)) {
        first_value = user_value1;
        break;
      }
    }
    while (true) {
      double user_value2 = inputDouble('Digite o segundo número entre -100 e 100: ');
      if (value_is_valid(user_value2)) {
        second_value = user_value2;
        break;
      }
    }
    while (true) {
      String user_operator = inputStr('Digite a operação (+ - x /): ');
      if (operator_is_valid(user_operator)) {
        operator = user_operator;
        break;
      }
    }
  }

  String show() {
    return '$first_value $operator $second_value = $result';
  }
}
