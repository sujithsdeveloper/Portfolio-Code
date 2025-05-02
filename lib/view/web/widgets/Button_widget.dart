import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/utils/constants/globalConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    super.key,
    required this.label,
    this.height,
    this.width,
    required this.onTap,
    this.transform,
    this.textsize,
    this.fontWeight = FontWeight.bold,
  });
  final String label;
  final double? height;
  final double? width;
  final Function() onTap;
  final bool? transform;
  final double? textsize;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
          constraints.maxWidth >= desktopMinimumWith
              ? OnHover(
                  wantTransform: transform ?? false,
                  builder: (isHovered) => _button(
                    onTap: onTap,
                    height: height,
                    width: width,
                    label: label,
                    fontWeight: fontWeight,
                    textsize: textsize,
                    isHovered: isHovered,
                  ),
                )
              : InkWell(
                  onTap: onTap,
                  child: Container(
                    height: height,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        gradient: Colorconstants.gradient),
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

class _button extends StatelessWidget {
  const _button({
    super.key,
    required this.onTap,
    required this.height,
    required this.width,
    required this.label,
    required this.fontWeight,
    required this.textsize,
    this.isHovered,
  });

  final Function() onTap;
  final double? height;
  final double? width;
  final String label;
  final FontWeight fontWeight;
  final double? textsize;
  final bool? isHovered;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashFactory: NoSplash.splashFactory,
      onTap: onTap,
      child: Container(
        height: height ?? 40,
        width: width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            gradient: isHovered ?? false
                ? const LinearGradient(colors: [
                    Colors.white,
                    Colors.white,
                  ])
                : Colorconstants.gradient),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            label,
            style: TextStyle(
                color: isHovered ?? false ? Colors.black : Colors.white,
                fontWeight: fontWeight,
                fontSize: textsize ?? 20),
          ),
        )),
      ),
    );
  }
}
