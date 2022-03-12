import 'person.dart';

class Staf extends Pegawai {
  int TotalGaji = 0;
  int BatasCuti = 12;
  int TKehadiran = 0;
  Staf(String? Nama, String? NIP, int TotalGaji, int BatasCuti, int TKehadiran)
      : super(Nama, NIP) {
    this.TotalGaji = TotalGaji;
    this.BatasCuti = BatasCuti;
    this.TKehadiran = TKehadiran;
  }

  int get totalgaji => this.TotalGaji;

  int get batascuti => this.BatasCuti;

  int get tkehadiran => this.TKehadiran;
}
