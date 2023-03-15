import 'dart:math';

class Calculator {
  double operan1 = 0;
  double operan2 = 0;

  double isiOperan1(double x) {
    return operan1 = x;
  }

  double isiOperan2(double x) {
    return operan2 = x;
  }

  double tambah() {
    double hasil = operan1 + operan2;
    return hasil;
  }

  double kurang() {
    double hasil = operan1 - operan2;
    return hasil;
  }

  double kali() {
    double hasil = operan1 * operan2;
    return hasil;
  }

  double bagi() {
    double hasil = operan1 / operan2;
    return hasil;
  }

  int pangkat() {
    int hasil = pow(operan1, operan2).toInt();
    return hasil;
  }
}

void main(List<String> args) {
  var tes = Calculator();
  tes.isiOperan1(23);
  tes.isiOperan2(16);
  print(tes.tambah());
  print(tes.kurang());
  print(tes.kali());
  print(tes.bagi());
  print(tes.pangkat());
}
