import 'package:flutter/material.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';

class Skillboxcontainer extends StatelessWidget {
  Skillboxcontainer(
      {super.key, required this.label, required this.imageAssetname});
  String label;
  String imageAssetname;

  @override
  Widget build(BuildContext context) {
    return OnHover(
      wantTransform: true,
      builder: (isHovered) => Container(
        height: 50,
        width: 150,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image(height: 70, width: 70, image: AssetImage(imageAssetname)),
              Text(
                '$label',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
      ),
    );
  }
}
