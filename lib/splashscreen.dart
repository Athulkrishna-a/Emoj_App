import 'package:emoj_app/homescreen.dart';
import 'package:emoj_app/introscreen.dart';
import 'package:emoj_app/main.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      (() {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) {
            return isViwed != 0 ? IntroScreen() : HomeView();
          }),
        );
      }),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
            child: SizedBox(
              height: 300,
              width: 300,
              child: Lottie.asset('assets/wow.json'),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "E M O J A P P",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.home),
            ],
          )
        ],
      ),
    );
  }
}
