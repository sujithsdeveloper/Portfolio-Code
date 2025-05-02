import 'package:flutter/material.dart';

class MobileSkillboxcontainer extends StatelessWidget {
  MobileSkillboxcontainer(
      {super.key, required this.label, required this.imageAssetname});
  String label;
  String imageAssetname;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
