class Calculator {
  final int weight;
  double height;

  Calculator(this.height, this.weight);

  // IMC = peso / (altura x altura)
  double calculate() {
    return weight / (height * height);
  }

  String description(double result) {
    if (result < 20) {
      return 'Você esta abaixo do peso!';
    } else if (result > 20 && result <= 25) {
      return 'Peso Ideal';
    } else if (result > 25 && result <= 30) {
      return 'Sobrepeso';
    } else if (result > 30 && result <= 35) {
      return 'Obesidade Moderada';
    } else if (result > 35 && result <= 40) {
      return 'Obesidade Severa';
    } else if (result > 40 && result <= 50) {
      return 'Obesidade Morbida';
    } else {
      return 'Gordo';
    }
  }
}
