import 'package:flutter/material.dart';
import 'package:rumah_adat/models/rumah.dart';

class DetailPage extends StatelessWidget {
  final Rumah rumah;

  const DetailPage({super.key, required this.rumah});

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
          ],
        ),
      ),
    );
  }
}
