import 'person.dart';
import 'function.dart';

class Mhs extends Mahasiswa with InputIps, LihatIpk, UbahStatus, AmbilSks {
  int Sks = 2;
  int Semester = 1;

  Mhs(String? Nama, String? NRP, String? Status, double Ipk, double Ips,
      int sks, int semester)
      : super(Nama, NRP, Status, Ipk, Ips) {
    this.Sks = sks;
    this.Semester = semester;
  }

  int get sks => this.Sks;
  int get semester => this.Semester;
}
