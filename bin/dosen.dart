import 'person.dart';

class Dosen extends Pegawai {
  int JumSks = 0;
  int TKehadiran = 0;

  Dosen(String? Nama, String? NIP, int JumSks, int TKehadiran)
      : super(Nama, NIP) {
    this.JumSks = JumSks;
    this.TKehadiran = TKehadiran;
  }
}

class DosenTetap extends Dosen {
  int GajiDasar = 0;

  DosenTetap(
      String? Nama, String? NIP, int JumSks, int TKehadiran, int GajiDasar)
      : super(Nama, NIP, JumSks, TKehadiran) {
    this.GajiDasar = GajiDasar;
  }

  int get gajidasar => this.GajiDasar;
}

class DosenTamu extends Dosen {
  DosenTamu(String? Nama, String? NIP, int JumSks, int TKehadiran)
      : super(Nama, NIP, JumSks, TKehadiran);
}
