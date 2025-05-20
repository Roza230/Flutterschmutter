import 'package:flutter/material.dart';

class InstructionsScreen extends StatelessWidget {
  const InstructionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Image.asset('assets/images/WelcomeMsg.png'),
            ),
            Expanded(
              child: Center(
                child: Image.asset('assets/images/howTOplay.png'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: screenHeight * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/game');
                    },
                    child: Image.asset('assets/images/PlayBTN.png'),
                  ),
                  SizedBox(height: 15),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset('assets/images/BackBTN.png'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
