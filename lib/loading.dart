import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.asset(
          "assets/animations/54906-loading-animation-bored-hand.json",
          // repeat: false,
        ),
      ),
    );
  }
}
