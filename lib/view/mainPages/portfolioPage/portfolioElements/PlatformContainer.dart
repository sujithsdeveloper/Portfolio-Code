import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';
import 'package:webapp/view/Book_appoinement/bookAppointment.dart';

class PlatformContainer extends StatelessWidget {
  const PlatformContainer({
    super.key,
    required this.label,
    required this.iconData,
  });
  final String label;
  final IconData iconData;
  @override
  Widget build(BuildContext context) {
    return OnHover(
      wantTransform: true,
      builder: (isHovered) => InkWell(
        splashFactory: NoSplash.splashFactory,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookAppointment(title: label),
              ));
        },
        child: Container(
          height: 70,
          width: 220,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              gradient: isHovered
                  ? const LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                    ])
                  : gradient),
          child: Center(
              child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(iconData, color: isHovered ? Colors.black : Colors.white),
              const SizedBox(width: 20),
              Text(
                label,
                style: TextStyle(
                    color: isHovered ? Colors.black : Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
