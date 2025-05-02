import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/view/web/mainPages/portfolioPage/widgets/Desktop/DesktopSkillBoxContainer.dart';

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
        StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection('Appdatas')
                .doc('Skills')
                .collection('SkillLists')
                .snapshots(),
            builder: (context, Snacpshot) {
              final skills = Snacpshot.data?.docs.reversed.toList();
              if (Snacpshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              } else if (Snacpshot.hasData) {
                log('Skills: ${skills?[0]['skillName'] ?? ''}');
                log('Skills: ${skills?[0]['imageUrl'] ?? ''}');
                return Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.start,
                  children: List.generate(
                    skills?.length ?? 0,
                    (index) => Skillboxcontainer(
                        label: skills?[index]['skillName'] ?? '',
                        imageUrl: skills?[index]['imageUrl'] ?? ''),
                  ),
                );
              } else {
                return SizedBox();
              }
            }),
      ],
    );
  }
}
