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
            "Rumah Gadang adalah nama untuk rumah adat Minangkabau yang merupakan rumah tradisional dan banyak jumpai di Sumatera Barat, Indonesia. Rumah ini juga disebut dengan nama lain oleh masyarakat setempat dengan nama Rumah Bagonjong atau ada juga yang menyebut dengan nama Rumah Banjuang.",
        imagePath: 'images/rmh_gadang.jpg',
        dibangun: '1895'),
    Rumah(
        nama: "Rumah Bolon",
        asal: "Sumatera Utara",
        deskripsi:
            "Rumah adat Bolon terdiri dari beberapa jenis rumah adat, seperti rumah Bolon Simalungun, Bolon Karo, Bolon Pakpak, Bolon Angkota, dan lain sebagainya. Secara umum Bolon berkonsep rumah panggung dengan tiang penyangga setinggi 1,75 m. Jadi ketika hendak memasuki rumah, tamu ataupun pemiliknya harus melewati tangga. Di mana tangga ini selalu berjumlah ganjil. Selain berkonsep panggung dengan tiang penyangga, ciri khas lain rumah Bolon ini ada pada dindingnya yang pasti dilengkapi dengan ornamen khas Simalungan. Ornamen jenis ini selalu memakai warna hitam, merah, dan putih. Ada makna tersendiri kenapa ornamen ini yang dipakai. Masyarakat percaya bahwa ornamen Simalungan menjadi lambang pandangan kosmologis dan filosofi dari budaya suku Batak. ",
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
            "Rumah Limas merupakan rumah tradisional Sumatera Selatan. Selain ditandai dengan atapnya yang berbentuk limas, rumah tradisional ini memiliki lantai bertingkat-tingkat yang disebut Bengkilas atau Kijing dan hanya dipergunakan untuk kepentingan keluarga seperti hajatan.",
        imagePath: 'images/rmh_limas.jpg',
        dibangun: '1830'),
    Rumah(
        nama: "Rumah Mbaru Niang",
        asal: "Nusa Tenggara Timur",
        deskripsi:
            "Rumah adat Mbaru Niang memiliki ciri yaitu pada bagian atap, bentuknya menyerupai kerucut menjulang tinggi dari atas hingga permukaan tanah. Kerucut memiliki arti yaitu perlindungan dan persatuan masyarakat desa Wae Rebo.    ",
        imagePath: 'images/rmh_mbaruniang.jpg',
        dibangun: '1800-an'),
    Rumah(
        nama: "Rumah Nuwo Sesat",
        asal: "Lampung",
        deskripsi:
            "Nuwo Sesat terdiri dari dua kata, yaitu NUWO yang berarti rumah atau tempat tinggal, dan SESAT yang memiliki makna musyawarah. Rumah adat ini memiliki fungsi sebagai tempat pertemuan adat bagi para purwatin (penyimbang) saat mengadakan pepung adat (musyawarah).",
        imagePath: 'images/rmh_nuwosesat.jpeg',
        dibangun: '1800-an'),
    Rumah(
        nama: "Rumah Baduy",
        asal: "Banten",
        deskripsi:
            "Rumah adat Baduy terdiri atas tiga bagian utama. Bagian pertama disebut Sosoro atau bagian depan untuk menerima tamu dan tempat menenun oleh perempuan, bagian kedua merupakan ruang inti keluarga yang bisa dipakai bercengkerama sampai tertidur, dan bagian rumah yang ketiga adalah Ipah untuk menyimpan hasil sawah serta alat bertani.",
        imagePath: 'images/rmh_baduy.jpeg',
        dibangun: '1500-an'),
    Rumah(
        nama: "Rumah Kebaya",
        asal: "DKI Jakarta",
        deskripsi:
            "Rumah adat Kebaya dipengaruhi oleh akulturasi dari berbagai daerah baik lokal maupun internasional. Ciri rumah ini yakni teras yang luas sebagai tempat untuk menjamu tamu dan bersantai keluarga",
        imagePath: 'images/rmh_kebaya.jpeg',
        dibangun: '1930'),
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
