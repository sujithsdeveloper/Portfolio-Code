import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/view/web/mainPages/aboutPage/widgets/aboutMeContainer.dart';

class DesktopAboutpageContainer extends StatelessWidget {
  const DesktopAboutpageContainer({super.key});

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
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      GradientText(
                          Text(
                            'My Experience',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          colors: [Color(0xff814ceb), Color(0xff2d155d)]),
                      SizedBox(height: 20),
                      AboutMeContainer(
                        wantGradient: false,
                        title: 'Flutter Intern',
                        wantTransform: true,
                        subtitle: 'Luminar Technolab PVT LTD',
                        date: '2024 May-Present',
                      ),
                      SizedBox(height: 20),
                      AboutMeContainer(
                        title: 'System Administrator',
                        wantTransform: true,
                        subtitle: 'Trackon Courier PVT LTD',
                        date: '2023 Dec-2024 May',
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Lottie.asset(
                  AnimationConstants.ABOUT_ME,
                  height: 500,
                  width: 500,
                )
              ],
            ),
            Row(
              children: [
                Lottie.asset(
                    height: 500,
                    width: 500,
                    AnimationConstants.PORTFOLIO_SKILLS),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: Column(
                    children: [
                      GradientText(
                          Text(
                            'My Education',
                            style: TextStyle(
                                fontSize: 50, fontWeight: FontWeight.bold),
                          ),
                          colors: [Color(0xff814ceb), Color(0xff2d155d)]),
                      SizedBox(height: 20),
                      AboutMeContainer(
                          wantTransform: true,
                          title: 'Flutter Development',
                          subtitle: 'Luminar Technolab',
                          date: '2024'),
                      SizedBox(height: 20),
                      AboutMeContainer(
                          wantTransform: true,
                          title: 'Bsc Physics',
                          subtitle: 'Christian College Chengannur',
                          date: '2023-23'),
                      SizedBox(height: 20),
                      AboutMeContainer(
                          wantTransform: true,
                          title: 'Navtive Android Development',
                          subtitle: 'Avodha',
                          date: '2020-21'),
                      SizedBox(height: 20),
                      AboutMeContainer(
                          wantTransform: true,
                          title: 'Computer Science(Plus-two)',
                          subtitle: 'BJSM',
                          date: '2018-20'),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
