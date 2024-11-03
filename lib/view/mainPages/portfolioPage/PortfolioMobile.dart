import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/view/mainPages/portfolioPage/widgets/mobile/MobileSkillBoxContainer.dart';
import 'package:webapp/view/mainPages/portfolioPage/widgets/mobile/MobileplatformBoxContainer.dart';
import 'dart:html' as html;

class Portfoliomobile extends StatelessWidget {
  const Portfoliomobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              const Center(
                child: Text(
                  'What I can do',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                ),
              ),
              Lottie.asset(AnimationConstants.PORTFOLIO_DEVELOPER),
              const SizedBox(height: 20),
              const Text(
                'Platforms',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              const SizedBox(height: 20),
              Wrap(
                spacing: 20,
                runSpacing: 20,
                alignment: WrapAlignment.start,
                children: [
                  MobilePlatformBoxContainer(
                    label: 'Android Dev',
                    blackIcon: const Icon(
                      Icons.android,
                      color: Colors.black,
                    ),
                    whiteIcon: const Icon(
                      Icons.android,
                      color: Colors.white,
                    ),
                  ),
                  MobilePlatformBoxContainer(
                    label: 'IOS Dev',
                    blackIcon: const Icon(
                      Icons.apple,
                      color: Colors.black,
                    ),
                    whiteIcon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                  ),
                  MobilePlatformBoxContainer(
                    label: 'Web Dev',
                    blackIcon: const Icon(
                      Icons.language,
                      color: Colors.black,
                    ),
                    whiteIcon: const Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                  ),
                  MobilePlatformBoxContainer(
                    label: 'Desktop Dev',
                    blackIcon: const Icon(
                      Icons.computer,
                      color: Colors.black,
                    ),
                    whiteIcon: const Icon(
                      Icons.computer,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Skills',
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
              Lottie.asset(AnimationConstants.PORTFOLIO_SKILLS),
              const SizedBox(height: 20),
              Wrap(
                spacing: 10,
                runSpacing: 20,
                alignment: WrapAlignment.start,
                children: List.generate(
                  skillsDatas.length,
                  (index) => MobileSkillboxcontainer(
                      label: skillsDatas[index]['label'],
                      imageAssetname: skillsDatas[index]['image']),
                ),
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTap: () {
                  const url =
                      'https://drive.google.com/uc?export=download&id=15Zqz6jFU5ECnKspzXCmYI7McGMZloLV0';
                  html.window.open(url, "_blank");
                },
                child: Container(
                  margin: const EdgeInsets.all(9),
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: gradient,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Download My Resume',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                      Icon(
                        Icons.file_download_outlined,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
