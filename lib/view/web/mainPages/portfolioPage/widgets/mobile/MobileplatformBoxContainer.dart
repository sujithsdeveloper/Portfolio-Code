import 'package:flutter/material.dart';

class MobilePlatformBoxContainer extends StatelessWidget {
  MobilePlatformBoxContainer(
      {super.key,
      required this.label,
      required this.blackIcon,
      required this.whiteIcon,
      this.boxHeight});

  String label;
  Icon blackIcon;
  Icon whiteIcon;
  double? boxHeight;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 70,
        // width: 220,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              whiteIcon,
              SizedBox(width: 20),
              Text(
                '$label',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff814ceb), Color(0xff2d155d)],
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
