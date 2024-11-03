import 'package:flutter/material.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';

class AboutMeContainer extends StatelessWidget {
  const AboutMeContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    this.wantTransform = false,
    this.wantGradient = true});
  final String title;
  final String subtitle;
  final String date;
  final bool wantTransform;
  final bool wantGradient;
  @override
  Widget build(BuildContext context) {
    return wantTransform
        ? OnHover(
            wantTransform: true,
            builder: (isHovered) => Container(
              width: 350,
              decoration: BoxDecoration(
                color: bgColor,
                border: isHovered ? Border.all(color: Colors.white) : null,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    GradientText(
                      colors: const [Color(0xff814ceb), Color(0xff2d155d)],
                      Text(subtitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                    ),
                    Text(
                      date,
                      style: const TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          )
        : Container(
            width: 350,
            decoration: BoxDecoration(
              color: bgColor,
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                  wantGradient
                      ? GradientText(
                          colors: const [Color(0xff814ceb), Color(0xff2d155d)],
                          Text(subtitle,
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                        )
                      : Text(subtitle,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16)),
                  Text(
                    date,
                    style: const TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          );
  }
}
