import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/view/mainPages/portfolioPage/widgets/Desktop/DesktopSkillBoxContainer.dart';

class Skills extends StatelessWidget {
  const Skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'My Skills',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        SizedBox(height: 20),
        Wrap(
          spacing: 20, 
          runSpacing: 20,
          alignment: WrapAlignment.start,
    
          children: List.generate(
            skillsDatas.length,
            (index) => Skillboxcontainer(
                label: skillsDatas[index]['label'],
                imageAssetname: skillsDatas[index]['image']),
          ),
      
        ),
      ],
    );
  }
}
