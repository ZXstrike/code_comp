import 'package:code_comp/screen/landing_screen/about_us.dart';
import 'package:code_comp/screen/landing_screen/contact_us_field.dart';
import 'package:code_comp/screen/landing_screen/side_bar.dart';
import 'package:code_comp/screen/landing_screen/welcome_message.dart';
import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  LandingScreen({super.key});

  final _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: Container(
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'lib/assets/images/logo_alterra_academy.png',
            fit: BoxFit.contain,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              _key.currentState?.openEndDrawer();
            },
            icon: const Icon(Icons.menu),
          ),
        ],
      ),
      endDrawer: const SideBars(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const WelcomeMessage(),
            const ContacctUsField(),
            AboutUs(),
            const SizedBox(
              height: 200,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'A',
          ),
        ],
      ),
    );
  }
}
