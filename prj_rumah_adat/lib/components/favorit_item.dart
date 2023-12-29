import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/models/favorit.dart';
import 'package:rumah_adat/models/rumah.dart';

class FavoritItem extends StatefulWidget {
  Rumah rumah;
  FavoritItem({super.key, required this.rumah});

  @override
  State<FavoritItem> createState() => _FavoritItemState();
}

class _FavoritItemState extends State<FavoritItem> {
  // remove item method
  void removeItemFromFavorit() {
    Provider.of<Favorit>(context, listen: false)
        .removeItemFromFavorit(widget.rumah);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.rumah.imagePath),
        title: Text(widget.rumah.nama),
        trailing: IconButton(
          onPressed: removeItemFromFavorit,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
