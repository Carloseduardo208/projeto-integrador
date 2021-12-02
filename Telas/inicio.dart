import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, '/login');
    });

    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(500),
              color: Color(0xffffffff),
            ),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('assets/logo.jpg'),
            ),
          ),
          SizedBox(height: 25),
          Text(
            'Sistema de Licenciamento Ambiental',
            style: GoogleFonts.quicksand(
              color: Color(0xffffffff),
              decoration: TextDecoration.none,
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff0000ff), Color(0xff0000ff)],
        ),
      ),
    );
  }
}
