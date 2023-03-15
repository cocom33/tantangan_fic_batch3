class Nilai {
  double? Quis;
  double? UTS;
  double? UAS;

  void setQuis(double x) => Quis = x;
  void setUTS(double x) => UTS = x;
  void setUAS(double x) => UAS = x;

  double getNA() {
    double nilai = (Quis! * 20 / 100) + (UTS! * 30 / 100) + (UAS! * 50 / 100);
    return nilai;
  }

  String getIndex() {
    double nilai = (Quis! * 20 / 100) + (UTS! * 30 / 100) + (UAS! * 50 / 100);
    if (nilai >= 80) {
      return 'Index = A';
    } else if (nilai >= 68) {
      return 'Index = B';
    } else if (nilai >= 56) {
      return 'Index = C';
    } else if (nilai >= 45) {
      return 'Index = D';
    } else {
      return 'Index = E';
    }
  }

  String getKeterangan() {
    double nilai = (Quis! * 20 / 100) + (UTS! * 30 / 100) + (UAS! * 50 / 100);
    if (nilai >= 80) {
      return 'Nilai Kamu Sangat Baik';
    } else if (nilai >= 68) {
      return 'Nilai Kamu Baik';
    } else if (nilai >= 56) {
      return 'Nilai Kamu Cukup';
    } else if (nilai >= 45) {
      return 'Nilai Kamu Kurang';
    } else {
      return 'Nilai Kamu Sangat Kurang';
    }
  }
}

void main(List<String> args) {
  var budi = Nilai();
  budi.setQuis(90);
  budi.setUTS(80);
  budi.setUAS(50);
  print('nilai kamu adalah ${budi.getNA()}');
  print(budi.getIndex());
  print(budi.getKeterangan());
}
