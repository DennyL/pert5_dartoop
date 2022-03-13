import 'dosen.dart';
import 'mahasiswa.dart';
import 'dart:io';

//Function Pegawai
mixin LihatPenghasilan {
  int lhatpenghasilan(int jumsks, int absensi, int tunjangan) {
    return jumsks * 40000;
  }
}

//Function Dosen LB
mixin DsnLbAbsensi {
  void ddsnlbabsensi(Dosen nama) {
    nama.absensi++;
    print("Absen Berhasil");
  }
}

mixin DsnLbJumSks {
  void dnslbjumsks(Dosen nama, int jum) {
    nama.JumSks = jum;
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
    if (status != "aktif" ||
        status != "Aktif" ||
        status != "Cuti" ||
        status != "cuti") {
      print("Status yang dimasukkan harus Aktif/Cuti atau aktif/cuti");
    } else {
      nama.status = status;
    }
  }
}

mixin InputIps {
  void inputips(Mhs nama) {
    for (int i = 0; i < nama.semester; i++) {
      print("Input ke- ${i + 1}");
      double input = double.parse(stdin.readLineSync()!);
      nama.ips += input;
    }
  }
}

mixin LihatIpk {
  double lihatipk(Mhs nama) {
    nama.inputips(nama);
    return (nama.ips / nama.semester);
  }
}
