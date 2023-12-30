import 'package:flutter/material.dart';
import 'package:rumah_adat/models/rumah.dart';
import 'package:rumah_adat/models/favorit.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  //TODO 1 VARIABEl
  List<Rumah>? _filteredRumahs = rumahAdat;
  String _searchQuery = '';
  TextEditingController _searchController = TextEditingController();

  static List<Rumah>? get rumahAdat => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO 2 appBar
      appBar: AppBar(
        title: Text('Pencarian'),
      ),
      body: Column(
        children: [
          //TODO 4 TEXTFIELD
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.deepPurple.shade50),
              child: const TextField(
                autofocus: false,
                decoration: InputDecoration(
                    hintText: 'Cari Rumah Adat',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
              ),
            ),
          ),
          //TODO 5 LISTVIEW
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: _filteredRumahs?.length,
              itemBuilder: (context, index) {
                final rumah = _filteredRumahs?[index];
                return Card(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            rumah!.imagePath,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              rumah.nama,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                              height: 4,
                            ),
                            Text(rumah.asal)
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
