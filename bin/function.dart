import 'dosen.dart';
import 'mahasiswa.dart';
import 'dart:io';
import 'staf.dart';

//String Extension
extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

//Function Pegawai

//Function Staff
mixin StaffLihatPenghasilan {
  int stafflihatpenghasilan(Staf nama) {
    return (nama.absensi * nama.TKehadiran) + nama.GajiDasar;
  }
}

mixin StaffAmbilCuti {
  void staffambilcuti(Staf nama) {
    nama.BatasCuti--;
    if (nama.BatasCuti < 0) {
      print("Batas cuti telah habis :)");
      nama.BatasCuti = 0;
    }
  }
}

mixin StaffAbsensi {
  void staffbabsensi(Staf nama) {
    nama.absensi++;
    print("Absen Berhasil");
  }
}

//Function Dosen LB
mixin DsnLbAbsensi {
  void dsnlbabsensi(Dosen nama) {
    nama.absensi++;
    print("Absen Berhasil");
  }
}

mixin DsnLbJumSks {
  void dnslbjumsks(Dosen nama, int jum) {
    nama.JumSks = jum;
  }
}

mixin DsnLbLihatPenghasilan {
  int dsnlblihatpenghasilan(Dosen nama) {
    return (nama.jumsks * 40000);
  }
}

//Function Dosen Tamu
mixin DsnTamuAbsensi {
  void dsntamuabsensi(DosenTamu nama) {
    nama.absensi++;
    print("Absen Berhasil");
  }
}

mixin DsnTamuJumSks {
  void dnstamujumsks(Dosen nama, int jum) {
    nama.JumSks = jum;
  }
}

mixin DsnTamuLihatPenghasilan {
  int dsntamulihatpenghasilan(DosenTamu nama) {
    return (nama.jumsks * 40000) + (nama.TKehadiran * nama.absensi);
  }
}

//function Dosen Tetap
mixin DsnTtpAbsensi {
  void dsnttpabsensi(DosenTetap nama) {
    nama.absensi++;
    print("Absen Berhasil");
  }
}

mixin DsnTtpJumSks {
  void dnsttpjumsks(Dosen nama, int jum) {
    nama.JumSks = jum;
  }
}

mixin DsnTtpLihatPenghasilan {
  int dsnttplihatpenghasilan(DosenTetap nama) {
    return (nama.jumsks * 40000) +
        (nama.TKehadiran * nama.absensi) +
        nama.GajiDasar;
  }
}

//Function Mahasiswa
mixin AmbilSks {
  void ambilsks(Mhs nama, int jum) {
    if (jum < 2 || jum > 24) {
      print("MIN pengambilan SKS adalah 2 dan MAX adalah 24");
    } else {
      nama.Sks = jum;
    }
  }
}

mixin UbahStatus {
  void ubahstatus(Mhs nama, String status) {
    String temp = status.capitalize().trim();
    if (temp == "Cuti" || temp == "Aktif") {
      nama.status = temp;
    } else {
      print("Status yang ddiinputkan salah");
    }
  }
}

mixin InputIps {
  void inputips(Mhs nama) {
    for (int i = 0; i < nama.semester; i++) {
      print("Input ke- ${i + 1}");
      double input = double.parse(stdin.readLineSync()!);
      if (input < 0.0 || input > 4.0) {
        print("IPS yang dimasukkan tidadk sesuai");
        i--;
      } else {
        nama.ips += input;
      }
    }
  }
}

mixin LihatIpk {
  double lihatipk(Mhs nama) {
    nama.inputips(nama);
    return (nama.ips / nama.semester);
  }
}
