import 'dosen.dart';
import 'staf.dart';
import 'mahasiswa.dart';

void main() {
  //Mahasiswa
  var mhs1 = Mhs('Denny', 'C14190004', 'Aktif', 0.0, 0.0, 0, 6);
  mhs1.ambilsks(mhs1, 18);
  mhs1.ubahstatus(mhs1, "cuti");
  print(
      "Jumlah Sks Punya ${mhs1.nama} adalah ${mhs1.Sks} dengan Status ${mhs1.status}");

  var mhs2 = Mhs('Jason', 'C14190030', 'Cuti', 0.0, 0.0, 0, 4);
  mhs2.ambilsks(mhs2, 22);
  mhs2.ubahstatus(mhs2, "aktif");
  print(
      "Jumlah Sks Punya ${mhs2.nama} adalah ${mhs2.Sks} dengan Status ${mhs2.status}");
  // print(mhs2.lihatipk(mhs2));

  //Dosen LB
  var dsnlb1 = Dosen('Yayan', '141842', 0, 0);
  print(dsnlb1.dsnlblihatpenghasilan(dsnlb1));

  //Dosen Tamu
  var dsntamu1 = DosenTamu('Bruno', '181902', 0, 0, 2500);

  //Dosen Tetap
  var dsnttp1 = DosenTetap('Agus', '160123', 0, 0, 5000, 3500000);

  //Staff
  var staf1 = Staf('Udin', '13141', 0, 12, 2500, 1500000);
  // staf1.staffbabsensi(staf1);
  // staf1.staffambilcuti(staf1);
  print(
      "Staf ${staf1.nama} memiliki penghasilan sebesar ${staf1.stafflihatpenghasilan(staf1)} dan batas Cuti tersisa ${staf1.batascuti} dan Kehadiran sebanyak ${staf1.absensi}");
  
}
