import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/view/web/mainPages/workPage/widgets/workCard.dart';

class MobileWorkpageContainer extends StatelessWidget {
  const MobileWorkpageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      width: double.maxFinite,
      child: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Works and Projects',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
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
                  )),
            )
          ]),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}
