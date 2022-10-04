import 'package:emoj_app/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.greenAccent,
    ),
  );
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EmojApp",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.greenAccent,
        backgroundColor: Colors.greenAccent,
        splashColor: Colors.transparent,
      ),
      home: const SplashScreen(),
    );
  }
}
