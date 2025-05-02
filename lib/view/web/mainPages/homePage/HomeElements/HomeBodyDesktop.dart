import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/utils/styles/textStyleFunction.dart';
import 'package:webapp/view/web/widgets/Button_widget.dart';

class HomeBodyDesktop extends StatelessWidget {
  HomeBodyDesktop({super.key, required this.buttonTap});
  Function() buttonTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
                TyperAnimatedText(
                  'Hi,\nIm $myName S\nA Flutter Developer',
                  textStyle: headingStyle(),
                  speed: const Duration(milliseconds: 100),
                ),
              ]),
              const SizedBox(height: 20),
              ButtonWidget(
                  label: 'Get in Touch',
                  height: 50,
                  width: 200,
                  onTap: buttonTap),
            ],
          ),
          const Spacer(),
          const Image(height: 600, image: AssetImage(ImageConstants.SUJITH)),
          const SizedBox(
            width: 20,
          )
        ],
      ),
    );
  }
}
