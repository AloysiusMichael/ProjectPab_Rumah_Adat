import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rumah_adat/models/favorit.dart';
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
    return ChangeNotifierProvider(
      create: (context) => Favorit(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IntroPage(),
      ),
    );
  }
}
