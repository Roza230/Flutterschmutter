import 'package:flutter/material.dart';
import 'instructions.dart';
import 'game.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guess the Song',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/instructions': (context) => InstructionsScreen(),
        '/game': (context) => GameScreen(),
      },
    );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            // Characters & Headphones Assets
            Positioned(
              left: 170,
              top: 690,
              child: IgnorePointer(
                child: Image.asset('assets/images/GBHeadphones.png', width: 67),
              ),
            ),
            Positioned(
              right: 210,
              top: 720,
              child: IgnorePointer(
                child: Image.asset('assets/images/OBHeadphones.png', width: 90),
              ),
            ),
            Positioned(
              left: 170,
              bottom: 10,
              child: IgnorePointer(
                child: Image.asset('assets/images/DarkBBHeadphones.png', width: 176),
              ),
            ),
            Positioned(
              right: 310,
              bottom: 20,
              child: IgnorePointer(
                child: Image.asset('assets/images/PBHeadphones.png', width: 100),
              ),
            ),
            Positioned(
              left: screenWidth * 0.16,
              top: screenHeight * 0.33,
              child: IgnorePointer(
                child: Image.asset('assets/images/PinkBEARused1.png', width: 100),
              ),
            ),
            Positioned(
              right: screenWidth * 0.73,
              top: screenHeight * 0.70,
              child: IgnorePointer(
                child: Image.asset('assets/images/BlueBEAR1.png', width: 69),
              ),
            ),
            Positioned(
              left: screenWidth * 0.32,
              bottom: screenHeight * 0.31,
              child: IgnorePointer(
                child: Image.asset('assets/images/PinkBEAR2.png', width: 45),
              ),
            ),
            Positioned(
              right: screenWidth * 0.1,
              bottom: screenHeight * 0.2,
              child: IgnorePointer(
                child: Image.asset('assets/images/Open mouth.png', width: 247),
              ),
            ),

            // App Title
            Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Align(
                alignment: Alignment.topCenter,
                child: IgnorePointer(
                  child: Image.asset('assets/images/GuessTheSong.png'),
                ),
              ),
            ),

            // Play and Instructions Buttons
            Align(
              alignment: Alignment(0, -0.12),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/game');
                    },
                    child: Image.asset(
                      'assets/images/PlayBTN.png',
                      width: 150,
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/instructions');
                    },
                    child: Image.asset(
                      'assets/images/InstrBTN.png',
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),

            // Music Player
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: IgnorePointer(
                child: Image.asset(
                  'assets/images/Musicplayer.png',
                  width: screenWidth,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
