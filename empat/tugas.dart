abstract class Rumus {
  void getLuas();
  void getKeliling();
}

class PersegiPanjang extends Rumus {
  int panjang;
  int lebar;
  PersegiPanjang(this.panjang, this.lebar);

  void getLuas() {
    print('luas persegi panjang ini adalah ${panjang * lebar}');
  }

  void getKeliling() {
    print('keliling persegi panjang ini adalah ${2 * (panjang + lebar)}');
  }
}

class BujurSangkar extends Rumus {
  int sisi;
  BujurSangkar(this.sisi);

  void getLuas() {
    print('luas persegi ini adalah ${sisi * sisi}');
  }

  void getKeliling() {
    print('keliling persegi ini adalah ${4 * sisi}');
  }
}

class Lingkaran extends Rumus {
  int radius;
  double pi = 2.1415;

  Lingkaran(this.radius);

  void getLuas() {
    print('luas lingkarang ini adalah ${pi * radius * radius}');
  }

  void getKeliling() {
    print('keliling lingkarang ini adalah ${2 * pi * radius}');
  }
}

void main(List<String> args) {
  var persegi = BujurSangkar(5);
  persegi.getKeliling();
  persegi.getLuas();

  var bola = Lingkaran(14);
  bola.getKeliling();
  bola.getLuas();

  var persegipanjang = PersegiPanjang(5, 10);
  persegipanjang.getKeliling();
  persegipanjang.getLuas();
}
