import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/components/favorit_item.dart';
import 'package:rumah_adat/models/favorit.dart';
import 'package:rumah_adat/models/rumah.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Favorit>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //Heading
                  const Text(
                    "Favoritku",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),

                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserRumah().length,
                          itemBuilder: (context, index) {
                            // get Rumah
                            Rumah individualRumah = value.getUserRumah()[index];

                            // return Favorit item
                            return FavoritItem(rumah: individualRumah);
                          }))
                ],
              ),
            ));
  }
}
