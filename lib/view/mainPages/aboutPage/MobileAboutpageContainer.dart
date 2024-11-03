import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/view/mainPages/aboutPage/widgets/aboutMeContainer.dart';

class Mobileaboutpagecontainer extends StatelessWidget {
  const Mobileaboutpagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text('About Me',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30)),
            Lottie.asset(
              AnimationConstants.ABOUT_ME,
              height: 300,
              width: 300,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Experience',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(height: 20),
            const AboutMeContainer(
              wantGradient: false,
              wantTransform: false,
              title: 'Flutter Intern',
              subtitle: 'Luminar Technolab PVT LTD',
              date: '2024 May-Present',
            ),
            const SizedBox(height: 20),
            const AboutMeContainer(
              wantGradient: false,
              wantTransform: false,
              title: 'System Administrator',
              subtitle: 'Trackon Courier PVT LTD',
              date: '2023 Dec-2024 May',
            ),
            const SizedBox(
              height: 30,
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'My Education',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
            const SizedBox(height: 20),
            Lottie.asset(
              AnimationConstants.PORTFOLIO_SKILLS,
              height: 300,
              width: 300,
            ),
            const AboutMeContainer(
                wantGradient: false,
                wantTransform: false,
                title: 'Flutter Development',
                subtitle: 'Luminar Technolab',
                date: '2024'),
            const SizedBox(height: 20),
            const AboutMeContainer(
                wantGradient: false,
                wantTransform: false,
                title: 'Bsc Physics',
                subtitle: 'Christian College Chengannur',
                date: '2023-23'),
            const SizedBox(height: 20),
            const AboutMeContainer(
                wantGradient: false,
                wantTransform: false,
                title: 'Navtive Android Development',
                subtitle: 'Avodha',
                date: '2020-21'),
            const SizedBox(height: 20),
            const AboutMeContainer(
                wantGradient: false,
                wantTransform: false,
                title: 'Computer Science(Plus-two)',
                subtitle: 'BJSM',
                date: '2018-20'),
          ],
        ),
      ),
    );
  }
}
