import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';
import 'package:webapp/utils/styles/textStyleFunction.dart';
import 'package:webapp/view/mainPages/portfolioPage/portfolioElements/platform.dart';
import 'package:webapp/view/widgets/Button_widget.dart';
import 'dart:html' as html;

class PortfoilioDesktop extends StatelessWidget {
  const PortfoilioDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OnHover(
              wantTransform: false,
              builder: (isHovered) => isHovered
                  ? GradientTextStyle(text: 'What I can do', size: 40)
                  : const Text(
                      'What I can do',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 40),
                    ),
            ),
            const SizedBox(height: 10),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Lottie.asset(
                        height: 500,
                        width: 500,
                        AnimationConstants.PORTFOLIO_SKILLS),
                    const Expanded(child: PlatformElements()),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 60),
            ButtonWidget(
              label: 'Download My Resume',
              height: 60,
              width: 300,
              onTap: () {
                const url =
                    'https://drive.google.com/uc?export=download&id=15Zqz6jFU5ECnKspzXCmYI7McGMZloLV0';
                html.window.open(url, "_blank");
              },
              wantTransform: true,
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
