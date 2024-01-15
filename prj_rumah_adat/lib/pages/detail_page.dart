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
        title: Text(
          rumah.nama,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(rumah.imagePath),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.home, color: Colors.black),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Nama',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${rumah.nama}')
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(Icons.location_on, color: Colors.black),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Asal',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(': ${rumah.asal}')
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.date_range,
                          color: Colors.black,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const SizedBox(
                          width: 70,
                          child: Text(
                            'Dibangun',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text(': ${rumah.dibangun}')
                      ],
                    ),
                    // const Text(
                    //   'Deskripsi',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // const SizedBox(
                    //   height: 16,
                    // ),
                    // Text(rumah.deskripsi)
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Divider(),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  rumah.deskripsi,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(fontSize: 16),
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
