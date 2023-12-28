import 'package:flutter/material.dart';
import 'package:rumah_adat/pages/beranda_page.dart';
import 'package:rumah_adat/pages/home_page.dart';
import 'package:rumah_adat/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
