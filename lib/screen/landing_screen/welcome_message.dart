import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          "lib/assets/images/empty-room-with-chairs-desks.jpg",
          width: MediaQuery.of(context).size.width,
          height: 300,
          fit: BoxFit.cover,
          color: const Color.fromARGB(125, 0, 0, 0),
          colorBlendMode: BlendMode.darken,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
          child: Column(
            children: [
              const Text(
                "Coding Bootcamp Penghasil Programmer dengan Kualitas Tinggi di Indonesia",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Alterra Academy adalah coding bootcamp Indonesia untuk semua orang baik dengan background IT & non-IT untuk menjadi programmer dengan kualitas terbaik di industri saat ini.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              FilledButton(
                onPressed: () {
                  debugPrint('Dummy hehe.');
                },
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  ),
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Color.fromRGBO(237, 146, 61, 1),
                  ),
                ),
                child: const Text(
                  'Pelajari Lebih Lanjut',
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
