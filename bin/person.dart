class Person {
  String? _Nama;

  Person(this._Nama);
  set nama(String dtNama) {
    _Nama = dtNama;
  }

  String get nama => this._Nama!;
}

class Mahasiswa extends Person {
  String? _NRP;
  String? _Status;
  double _Ipk = 0.0;
  double _Ips = 0.0;

  Mahasiswa(String? Nama, this._NRP, this._Status, this._Ipk, this._Ips)
      : super(Nama);

  set nrp(String drNrp) {
    nrp = drNrp;
  }

  set status(String dtStatus) {
    _Status = dtStatus;
  }

  set ipk(double dtIpk) {
    _Ipk = dtIpk;
  }

  set ips(double dtIps) {
    _Ips = dtIps;
  }

  String get nrp => this._NRP!;
  String get status => this._Status!;
  double get ipk => this._Ipk;
  double get ips => this._Ips;
}

class Pegawai extends Person {
  String? _NIP;

  Pegawai(String? Nama, this._NIP) : super(Nama);

  set nip(String dtNip) {
    _NIP = dtNip;
  }

  String get nip => this._NIP!;
}
