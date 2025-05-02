import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';

class Skillboxcontainer extends StatelessWidget {
  Skillboxcontainer({super.key, required this.label, required this.imageUrl});
  String label;
  String imageUrl;

  @override
  Widget build(BuildContext context) {
    log('Image URL: $imageUrl');
    return OnHover(
      wantTransform: true,
      builder: (isHovered) => Container(
        height: 50,
        width: 150, // Increased width to prevent overflow
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.network(
                imageUrl,
                height: 40, // Reduced image size
                width: 40,
                errorBuilder: (context, error, stackTrace) => Icon(
                  Icons.broken_image,
                  color: Colors.black,
                  size: 40,
                ),
              ),
              SizedBox(width: 16), // Add spacing between image and text
              Expanded(
                child: Text(
                  '$label',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
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
