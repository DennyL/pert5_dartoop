import 'function.dart';
import 'person.dart';

class Dosen extends Pegawai with DsnLbAbsensi, LihatPenghasilan, DsnLbJumSks {
  int JumSks = 0;

  Dosen(String? Nama, String? NIP, int Absensi, int JumSks) : super(Nama, NIP, Absensi) {
    this.JumSks = JumSks;
  }

  int get jumsks => this.JumSks;
}

class DosenTamu extends Dosen with DsnTamuAbsensi, LihatPenghasilan, DsnTamuJumSks {
  int TKehadiran = 0;
  DosenTamu(String? Nama, String? NIP, int Absensi, int JumSks, int TKehadiran)
      : super(Nama, NIP, Absensi, JumSks) {
    this.TKehadiran = TKehadiran;
  }

  int get tkehadiran => this.TKehadiran;
}

class DosenTetap extends DosenTamu with DsnTtpAbsensi, LihatPenghasilan, DsnTtpJumSks {
  int GajiDasar = 0;

  DosenTetap(
      String? Nama, String? NIP, int Absensi, int JumSks, int TKehadiran, int GajiDasar)
      : super(Nama, NIP, JumSks, Absensi,TKehadiran) {
    this.GajiDasar = GajiDasar;
  }

  int get gajidasar => this.GajiDasar; 
} 
