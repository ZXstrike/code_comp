import 'package:code_comp/screen/landing_screen/product_card.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  AboutUs({super.key});

  final item = {
    'name': 'Immresive Program',
    'desc':
        'Program pelatihan coding bootcamp intensif bagi kamu yang pemula, baik dengan latar belakang IT maupun Non-IT, untuk menjadi Seorang Software Engineer Profesional dalam waktu 9 Minggu.',
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'About Us',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          'Alterra Academy Programs',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ProductCard(
                    productName: item['name']!,
                    productDesc: item['desc']!,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ProductCard(
                    productName: item['name']!,
                    productDesc: item['desc']!,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
