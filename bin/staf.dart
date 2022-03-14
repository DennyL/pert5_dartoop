import 'function.dart';
import 'person.dart';

class Staf extends Pegawai with StaffLihatPenghasilan, StaffAmbilCuti, StaffAbsensi {
  int BatasCuti = 12;
  int TKehadiran = 0;
  int GajiDasar = 0;
  Staf(String? Nama, String? NIP, int Absensi, int BatasCuti, int TKehadiran,
      int GajiDasar)
      : super(Nama, NIP, Absensi) {
    this.BatasCuti = BatasCuti;
    this.TKehadiran = TKehadiran;
    this.GajiDasar = GajiDasar;
  }

  int get batascuti => this.BatasCuti;

  int get tkehadiran => this.TKehadiran;

  int get gajidasar => this.GajiDasar;
}
