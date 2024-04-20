import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/page_one.dart';

class SplashScrren extends StatefulWidget {
  const SplashScrren({super.key});

  @override
  State<SplashScrren> createState() => _SplashScrrenState();
}

class _SplashScrrenState extends State<SplashScrren> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) => 
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageOne())));
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: 
          AssetImage("assets/images/Splash.png"),
          fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}