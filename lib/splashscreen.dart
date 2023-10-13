import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sih/homescreen.dart';
import 'package:sih/login.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2), // Adjust the duration as needed
    );

    _fadeInAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);

    // Start the animation when the widget is built
    _animationController.forward();

    startTimer();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  startTimer() {
    Timer(Duration(seconds: 2), () async {
      //if seller is logged in or not
      // if(firebaseAuth.currentUser!=null){
      Navigator.push(context, MaterialPageRoute(builder: (c) => Login()));
      // }
      //   else{
      //Navigator.push(context, MaterialPageRoute(builder: (c) => authscreen()));
    }
        // }
        );
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 915;
    final double widthRatio = size.width / 412;

    return Material(
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(-0.01, 0.80),
            radius: 0,
            colors: [
              Colors.white.withOpacity(0.33000001311302185),
              Colors.black,
            ],
          ),
        ),
        child: Center(
          child: FadeTransition(
            opacity: _fadeInAnimation, // Apply the fade-in animation
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'echolus',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 96 * widthRatio * heightRatio,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'IBM Plex Sans Condensed',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                Text(
                  'Dubbing videos just got easier.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 24 * widthRatio * heightRatio,
                    fontFamily: 'IBM Plex Sans Condensed',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
