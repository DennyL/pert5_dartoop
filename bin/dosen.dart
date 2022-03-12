import 'person.dart';

class Dosen extends Pegawai {
  int JumSks = 0;

  Dosen(String? Nama, String? NIP, int JumSks) : super(Nama, NIP) {
    this.JumSks = JumSks;
  }

  int get jumsks => this.JumSks;
}

class DosenTamu extends Dosen {
  int TKehadiran = 0;
  DosenTamu(String? Nama, String? NIP, int JumSks, int TKehadiran)
      : super(Nama, NIP, JumSks) {
    this.TKehadiran = TKehadiran;
  }

  int get tkehadiran => this.TKehadiran;
}

class DosenTetap extends DosenTamu {
  int GajiDasar = 0;

  DosenTetap(
      String? Nama, String? NIP, int JumSks, int TKehadiran, int GajiDasar)
      : super(Nama, NIP, JumSks, TKehadiran) {
    this.GajiDasar = GajiDasar;
  }

  int get gajidasar => this.GajiDasar;
}
