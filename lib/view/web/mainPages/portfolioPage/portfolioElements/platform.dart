import 'package:flutter/material.dart';
import 'package:webapp/view/web/mainPages/portfolioPage/portfolioElements/PlatformContainer.dart';
import 'package:webapp/view/web/mainPages/portfolioPage/portfolioElements/Skills.dart';
class PlatformElements extends StatelessWidget {
  const PlatformElements({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Platforms I Build For',
          style: TextStyle(
              color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 20),
        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlatformContainer(
                  label: 'Android',
                  iconData: Icons.android,
                ),
                SizedBox(width: 44),
                PlatformContainer(
                  label: 'IOS',
                  iconData: Icons.apple,
                ),
              ],
            ),
            SizedBox(height: 37),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PlatformContainer(
                  label: 'Web',
                  iconData: Icons.language,
                ),
                SizedBox(width: 44),
                PlatformContainer(
                  label: 'Desktop',
                  iconData: Icons.computer_outlined,
                ),
              ],
            ),
            SizedBox(height: 30),
            Skills()
          ],
        )
      ],
    );
  }
}
