import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/view/widgets/Button_widget.dart';

class HomeBodyMobile extends StatelessWidget {
  const HomeBodyMobile({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Image(height: 400, image: AssetImage(ImageConstants.SUJITH)),
          ),
          AnimatedTextKit(isRepeatingAnimation: false, animatedTexts: [
            TyperAnimatedText(
              'Hi,\nIm $myName S\nA Flutter Developer',
              textStyle: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              speed: const Duration(milliseconds: 100),
            ),
          ]),
          const SizedBox(height: 15),
          ButtonWidget(
            label: 'Get In Touch',
            height: 40,
            width: 200,
            onTap: onTap,
            wantTransform: false,
          ),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
