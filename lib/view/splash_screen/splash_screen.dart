import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/view/mainPages/Home/homePage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then(
      (value) => Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Homepage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie.asset(AnimationConstants.SPLASH_ANIM, width: 99),
            const SizedBox(height: 20),
            const Text(
              'Warning',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              'A Developer is waiting inside..',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Lottie.asset(width: 99, AnimationConstants.LOADING)
          ],
        ),
      ),
    );
  }
}
