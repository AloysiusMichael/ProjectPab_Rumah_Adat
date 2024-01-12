import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/components/rumah_tile.dart';
import 'package:rumah_adat/models/favorit.dart';
import 'package:rumah_adat/models/rumah.dart';
import 'package:rumah_adat/pages/detail_page.dart';

class SearchRumah extends StatefulWidget {
  const SearchRumah({super.key});

  @override
  State<SearchRumah> createState() => _SearchRumahState();
}

class _SearchRumahState extends State<SearchRumah> {
  late List<Rumah> _rumahAdat;

  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _rumahAdat = Provider.of<Favorit>(context, listen: false).getRumahAdat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pencarian Rumah Adat'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[50],
              ),
              child: TextField(
                decoration: const InputDecoration(
                  hintText: 'Cari Rumah Adat...',
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white70),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                ),
                onChanged: (query) {
                  setState(() {
                    _searchQuery = query.toLowerCase();
                    _rumahAdat = _rumahAdat
                        .where((rumah) =>
                            rumah.nama.toLowerCase().contains(_searchQuery) ||
                            rumah.asal.toLowerCase().contains(_searchQuery))
                        .toList();
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Expanded(
              child: ListView.builder(
            itemCount:
                _searchQuery.isEmpty ? _rumahAdat.length : _rumahAdat.length,
            itemBuilder: (context, index) {
              final rumah =
                  _searchQuery.isEmpty ? _rumahAdat[index] : _rumahAdat[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: const Offset(0, 1),
                    )
                  ],
                ),
                margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                child: ListTile(
                  title: Text(
                    rumah.nama,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    rumah.asal,
                    style: const TextStyle(
                      color: Color.fromRGBO(148, 155, 167, 1),
                    ),
                  ),
                  trailing: const Icon(Icons.navigate_next),
                  leading: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(rumah.imagePath),
                      ),
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailPage(rumah: rumah)));
                  },
                ),
              );
            },
          ))
        ],
      ),
    );
  }
}
