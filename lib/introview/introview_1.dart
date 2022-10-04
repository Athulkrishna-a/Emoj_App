import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class IntroOne extends StatelessWidget {
  const IntroOne({super.key, required this.image, required this.text});
  final String image, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 300,
            width: 300,
            child: Lottie.asset(image),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              fontFamily: "Teko",
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
