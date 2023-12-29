import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/models/favorit.dart';
import 'package:rumah_adat/models/rumah.dart';
import '../components/rumah_tile.dart';

class Beranda extends StatefulWidget {
  const Beranda({super.key});

  @override
  State<Beranda> createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  // add Rumah ke Favorit
  void addRumahToFavorit(Rumah rumah) {
    Provider.of<Favorit>(context, listen: false).addItemToFavorit(rumah);

    // alert the user, successfully added to the favorite
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text("Berhasil Ditambahkan ke Favorit"),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Favorit>(
        builder: (context, value, child) => Column(
              children: [
                // Searvh nar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.search),
                      ]),
                ),

                //message
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: Text(
                    'RUMAH ADAT NUSANTARA',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.grey[600]),
                  ),
                ),

                // hot picks
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Paling Sering Dikunjungi 🔥 ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        'Lihat Semua ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlueAccent),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                Expanded(
                    child: ListView.builder(
                        itemCount: 6,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          // get rumah adat
                          Rumah rumah = value.getRumahAdat()[index];
                          // return rumah
                          return RumahTile(
                            rumah: rumah,
                            onTap: () => addRumahToFavorit(rumah),
                          );
                        })),

                const Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
                  child: Divider(
                    color: Colors.white,
                  ),
                ),
              ],
            ));
  }
}
