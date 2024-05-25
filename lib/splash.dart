import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:version2/homescreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Version 2.0",
                textStyle: GoogleFonts.orbitron(
                    textStyle:
                        const TextStyle(fontSize:30 , color: Colors.white)),
                speed: const Duration(milliseconds: 150),
              ),
            ],
            totalRepeatCount: 4,
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ), // Replace with your GIF path
        ),
      ),
    );
  }
}
