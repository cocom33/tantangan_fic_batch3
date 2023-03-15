abstract class Kue {
  String? nama;
  double? harga;

  double hitungHarga();
  String toString() {
    return 'kue $nama , dengan harga $harga';
  }
}

class KuePesanan extends Kue {
  String? nama;
  double? harga;
  double berat;

  KuePesanan(this.nama, this.harga, this.berat);
  double hitungHarga() {
    return (harga! * berat);
  }

  String toString() {
    return 'kue $nama , dengan harga \$$harga';
  }
}

class KueJadi extends Kue {
  String? nama;
  double? harga;
  double jumlah;

  KueJadi(this.nama, this.harga, this.jumlah);
  double hitungHarga() {
    return (harga! * jumlah * 2);
  }

  String toString() {
    return 'kue $nama sudah jadi, dengan harga = \$$harga';
  }
}

void main(List<String> args) {
  var jagung = KuePesanan('kue jagung', 22.5, 1);
  print(jagung.hitungHarga());
  print(jagung);

  var panggang = KueJadi('kue panggang', 12.5, 0.5);
  print(panggang.hitungHarga());
  print(panggang);
}
