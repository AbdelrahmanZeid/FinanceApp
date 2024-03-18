import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode,
            ),
          ),
        ],
        leading: const Text(
          "Welcome Abdelrahman",
        ),
      ),
    );
  }
}
