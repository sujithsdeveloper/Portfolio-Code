import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/utils/constants/globalConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget(
      {super.key,
      required this.label,
      required this.height,
      this.width,
      required this.onTap,
      this.wantTransform,
      this.textsize,
      this.adjustTextsize = false});
  String label;
  double height;
  double? width;
  Function() onTap;
  bool? wantTransform;
  double? textsize;
  bool adjustTextsize;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          constraints.maxWidth >= desktopMinimumWith
              ? OnHover(
                  wantTransform: true,
                  builder: (isHovered) => InkWell(
                    splashFactory: NoSplash.splashFactory,
                    onTap: onTap,
                    child: Container(
                      height: height,
                      width: width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(22),
                          gradient: isHovered
                              ? const LinearGradient(colors: [
                                  Colors.white,
                                  Colors.white,
                                ])
                              : gradient),
                      child: Center(
                          child: Text(
                        label,
                        style: TextStyle(
                            color: isHovered ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: adjustTextsize ? textsize : 20),
                      )),
                    ),
                  ),
                )
              : InkWell(
                  onTap: onTap,
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: const LinearGradient(
                            colors: [Color(0xff814ceb), Color(0xff2d155d)])),
                    child: Center(
                        child: Text(
                      label,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    )),
                  ),
                ),
    );
  }
}
