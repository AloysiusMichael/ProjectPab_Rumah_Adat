import 'package:flutter/material.dart';
import 'package:rumah_adat/pages/home_page.dart';
import 'package:rumah_adat/pages/intro_page.dart';
import 'package:rumah_adat/pages/login_page.dart';
import 'package:rumah_adat/pages/profile_page.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[900],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // Logo men Ado
              Padding(
                padding: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/Heliotrope.png',
                    width: double.infinity,
                    height: 150,
                  ),
                ),
              ),
              // Halaman Lain (Login?, aBOUT[TTG APLIKASI NY, LATAR BELAKANG KT BUAT APK NY,], LOGOUT?)
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  child: ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(color: Colors.white),
                    ),
                    hoverColor: Colors.grey[600],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfilePage(),
                        )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: GestureDetector(
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Home',
                      style: TextStyle(color: Colors.white),
                    ),
                    hoverColor: Colors.grey[600],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        )),
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0),
              //   child: ListTile(
              //     leading: Icon(
              //       Icons.info,
              //       color: Colors.white,
              //     ),
              //     title: Text(
              //       'About',
              //       style: TextStyle(color: Colors.white),
              //     ),
              //     hoverColor: Colors.grey[600],
              //     onTap: () {},
              //   ),
              // ),
            ],
          ),
          Column(
            children: [
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(right: 12, left: 12),
                child: Divider(color: Colors.grey),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: GestureDetector(
                  child: ListTile(
                    leading: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    hoverColor: Colors.grey[600],
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => IntroPage(),
                        )),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
