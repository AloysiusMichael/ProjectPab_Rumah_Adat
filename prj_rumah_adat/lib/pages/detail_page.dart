import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/components/rumah_tile.dart';
import 'package:rumah_adat/models/favorit.dart';
import 'package:rumah_adat/models/rumah.dart';

class DetailPage extends StatelessWidget {
  final Rumah rumah;

  const DetailPage({super.key, required this.rumah});

  void _saveToFavorit(BuildContext context) {
    addRumahToFavorit(rumah, context);
  }

  void addRumahToFavorit(Rumah rumah, BuildContext context) {
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
    return Scaffold(
      appBar: AppBar(
        title: Text(rumah.nama),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(rumah.imagePath),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                rumah.deskripsi,
                textAlign: TextAlign.justify,
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            // FloatingActionButton(
            //     child: Icon(Icons.favorite),
            //     backgroundColor: Colors.grey[500],
            //     onPressed: () => addRumahToFavorit(rumah, context))
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black87,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(8)),
          child: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () => addRumahToFavorit(rumah, context),
            color: Colors.grey[500],
          ),
        ),
      ),
    );
  }
}
