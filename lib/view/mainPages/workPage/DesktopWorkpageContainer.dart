import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';
import 'package:webapp/utils/styles/textStyleFunction.dart';
import 'package:webapp/view/mainPages/workPage/widgets/workCard.dart';

class DesktopWorkpagecontainer extends StatelessWidget {
  const DesktopWorkpagecontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          const SizedBox(height: 20),
          OnHover(
            wantTransform: false,
            builder: (isHovered) => isHovered
                ? GradientTextStyle(text: 'Work and Projects', size: 40)
                : const Text(
                    'Work and Projects',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40),
                  ),
          ),
          const SizedBox(height: 20),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Expanded(
                child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              alignment: WrapAlignment.center,
              spacing: 20,
              runSpacing: 20,
              children: List.generate(
                worksAndProjectsPage.worksAndProjectsDatas.length,
                (index) => WorkCard(
                  platform: workCardData[index]['platform'],

                  index: index,
                ),
              ),
            )),
          ]),
          const SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
