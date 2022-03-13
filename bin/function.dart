import 'mahasiswa.dart';
import 'dart:io';

mixin Absensi {
  void absensi() {}
}

mixin DosenJumlahSks {
  void Dosenjumlahsks() {}
}

mixin LihatPenghasilan {
  void lihatpenghasilan() {}
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
    nama.status = status;
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
