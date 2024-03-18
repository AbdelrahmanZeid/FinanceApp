import 'dart:async';

import 'package:finance_app/colors/colors.dart';
import 'package:finance_app/pages/on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer timer = Timer(
        const Duration(
          seconds: 4,
        ), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (
            _,
          ) {
            return const OnBoarding();
          },
        ),
      );
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "assets/images/logo.svg",
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            "Finance",
            style: TextStyle(
              fontSize: 25,
              color: kGreenColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
