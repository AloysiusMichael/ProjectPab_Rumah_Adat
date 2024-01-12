// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:rumah_adat/models/rumah.dart';

class RumahTile extends StatelessWidget {
  Rumah rumah;
  void Function()? onTap;
  RumahTile({super.key, required this.rumah, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.only(left: 25),
          width: 200,
          decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // foto rumah
              ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(rumah.imagePath)),

              //Nama
              Text(
                rumah.nama,
                style: TextStyle(
                    color: Colors.grey[600], fontWeight: FontWeight.bold),
              ),

              // asal/awal digunakan
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                        // children: [
                        //   // // Asal
                        //   // Text(
                        //   //   rumah.asal,
                        //   //   style: const TextStyle(
                        //   //       fontWeight: FontWeight.bold, fontSize: 16),
                        //   // ),

                        //   // const SizedBox(
                        //   //   height: 8,
                        //   // ),
                        //   // // Awal dibangun
                        //   // Text(
                        //   //   rumah.dibangun,
                        //   //   style: const TextStyle(color: Colors.grey),
                        //   // ),
                        // ],
                        ),

                    // Button
                    Expanded(
                      child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomLeft: Radius.circular(12))),
                          child: const Icon(
                            Icons.more,
                            color: Colors.white,
                          )),
                    )
                  ],
                ),
              )
              // button tambah ke fav
            ],
          ),
        ),
      ),
    );
  }
}
