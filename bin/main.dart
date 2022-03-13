import 'dosen.dart';
import 'staf.dart';
import 'mahasiswa.dart';

void main() {
  //Mahasiswa
  var mhs1 = Mhs('Denny', 'C14190004', 'Aktif', 0.0, 0.0, 0, 6);
  mhs1.ambilsks(mhs1, 1);
  print("Jumlah Sks Punya ${mhs1.nama} adalah ${mhs1.Sks}");
  var mhs2 = Mhs('Jason', 'C14190030', 'Cuti', 0.0, 0.0, 0, 4);
  mhs2.ambilsks(mhs2, 23);
  print("Jumlah Sks Punya ${mhs2.nama} adalah ${mhs2.Sks}");
  // print(mhs2.lihatipk(mhs2));

  //Dosen LB
  var dsnlb1 = Dosen('Yayan', '141842', 0, 0);

  //Dosen Tamu
  var dsntamu1 = DosenTamu('Bruno', '181902', 0, 0, 2500);

  //Dosen Tetap
  var dsnttp1 = DosenTetap('Agus', '160123', 0, 0, 5000, 3500000);
  
  //Staff
  var staf1 = Staf('Umar', '121212', 0, 12, 2500);

}
