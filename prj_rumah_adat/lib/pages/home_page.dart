import 'package:flutter/material.dart';
import 'package:rumah_adat/components/bottom_nav_bar.dart';
import 'package:rumah_adat/components/drawer.dart';
import 'package:rumah_adat/pages/beranda_page.dart';
import 'package:rumah_adat/pages/favorit_page.dart';
import 'package:rumah_adat/pages/intro_page.dart';
import 'package:rumah_adat/pages/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages display
  final List<Widget> _pages = [
    //Halaman Beranda Rumah Adat
    const Beranda(),
    //Halaman Favorite
    const FavoritPage(),
    //Halaman Profile
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12),
              child: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: DrawerMenu(),
      body: _pages[_selectedIndex],
    );
  }
}
