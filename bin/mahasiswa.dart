import 'person.dart';

class Mhs extends Mahasiswa {
  int Sks = 2;

  Mhs(String? Nama, String? NRP, String? Status, double Ipk, double Ips,
      int sks)
      : super(Nama, NRP, Status, Ipk, Ips) {
    this.Sks = sks;
  }

  int get sks => this.Sks;
}
