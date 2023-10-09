import 'package:flutter/material.dart';

class SideBars extends StatefulWidget {
  const SideBars({super.key});

  @override
  State<SideBars> createState() => _SideBarsState();
}

class _SideBarsState extends State<SideBars> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: 175,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Contact Us",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "About Us",
                  style: TextStyle(fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 18),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
