import 'package:flutter/material.dart';
import 'package:rumah_adat/pages/home_page.dart';
import 'package:rumah_adat/pages/login_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent[300],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo (kalo ado)
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'images/Heliotrope.png',
                      width: double.infinity,
                      height: 300,
                    ),
                  ),
                ),
                // tittle
                const Text(
                  "Rumah Adat",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 24),
                //sub tittle
                const Text(
                  "Selamat datang dalam aplikasi kami yang mempersembahkan keindahan dan kekayaan rumah adat Indonesia. Aplikasi ini bukan hanya pintu gerbang virtual, melainkan teman setia yang membimbing Anda menembus sejarah dan tradisi yang kaya di seluruh nusantara. Mari bersama-sama meresapi keunikan setiap detail dan memperkaya pengetahuan serta apresiasi terhadap rumah adat Indonesia. Selamat menikmati perjalanan virtual Anda dan semoga aplikasi ini dapat membawa Anda lebih dekat dengan keajaiban budaya Indonesia yang memukau. Terima kasih telah bergabung dengan kami!",
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(height: 40),
                //start now ButtonBar
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginPage(),
                        )),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: EdgeInsets.all(25),
                      child: const Center(
                        child: Text(
                          "Mulai Petualangan",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
