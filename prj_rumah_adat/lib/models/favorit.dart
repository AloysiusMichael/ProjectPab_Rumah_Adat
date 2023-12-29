import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/models/rumah.dart';

class Favorit extends ChangeNotifier {
  // List Rumah adat Favorit
  List<Rumah> rumahAdat = [
    Rumah(
        nama: "Rumah Gadang",
        asal: "Sumatera Barat",
        deskripsi:
            "Rumah Gadang menjadi hunian paling populer di Minangkabau, Sumatera Barat. ",
        imagePath: 'images/rmh_gadang.jpg',
        dibangun: '1895'),
    Rumah(
        nama: "Rumah Bolon",
        asal: "Sumatera Utara",
        deskripsi:
            "Rumah adat Bolon terdiri dari beberapa jenis rumah adat, seperti rumah Bolon Simalungun, Bolon Karo, Bolon Pakpak, Bolon Angkota, dan lain sebagainya. Secara umum Bolon berkonsep rumah panggung dengan tiang penyangga setinggi 1,75 m. ",
        imagePath: 'images/rmh_bolon.jpg',
        dibangun: '1864'),
    Rumah(
        nama: "Rumah Joglo",
        asal: "Jawa Tengah",
        deskripsi:
            "rumah Joglo dibangun dengan bentuk atap meruncing seperti gunung. Hal ini dipercaya sebagai lambang penghormatan masyarakat Jawa pada gunung. Di mana mereka menganggap gunung sebagai tempat yang sakral, sebab percaya, di sanalah para dewa tinggal.  ",
        imagePath: 'images/rmh_joglo.jpg',
        dibangun: '1835'),
    Rumah(
        nama: "Rumah Limas",
        asal: "Sumatera Selatan",
        deskripsi:
            "Rumah Limas merupakan rumah panggung, untuk tempat tinggal para bangasawan. Rumah Limas berjenjang lima dengan bermakna Lima Emas, yaitu keagungan, rukun dan damai, sopan santun, aman dan subur, kemudian makmur dan sejahtera.   ",
        imagePath: 'images/rmh_limas.jpg',
        dibangun: '1830'),
    Rumah(
        nama: "Rumah Mbaru Niang",
        asal: "Nusa Tenggara Timur",
        deskripsi:
            "Rumah adat Mbaru Niang memiliki ciri yaitu pada bagian atap, bentuknya menyerupai kerucut menjulang tinggi dari atas hingga permukaan tanah. Kerucut memiliki arti yaitu perlindungan dan persatuan masyarakat desa Wae Rebo.    ",
        imagePath: 'images/rmh_mbaruniang.jpg',
        dibangun: '1800-an'),
  ];

  // state awal
  List<Rumah> userRumah = [];

  List<Rumah> getRumahAdat() {
    return rumahAdat;
  }

  List<Rumah> getUserRumah() {
    return userRumah;
  }

  // add rumah ke fav
  void addItemToFavorit(Rumah rumah) {
    userRumah.add(rumah);
    notifyListeners();
  }

  // remove rumah dari fav
  void removeItemFromFavorit(Rumah rumah) {
    userRumah.remove(rumah);
    notifyListeners();
  }
}
