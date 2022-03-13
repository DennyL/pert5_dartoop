import 'person.dart';

class Staf extends Pegawai {
  int BatasCuti = 12;
  int TKehadiran = 0;
  Staf(String? Nama, String? NIP, int Absensi, int BatasCuti, int TKehadiran)
      : super(Nama, NIP, Absensi) {
    this.BatasCuti = BatasCuti;
    this.TKehadiran = TKehadiran;
  }

  int get batascuti => this.BatasCuti;

  int get tkehadiran => this.TKehadiran;
}
