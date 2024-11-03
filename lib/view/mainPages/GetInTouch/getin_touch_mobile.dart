import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:webapp/view/widgets/Button_widget.dart';

class GetinTouchMobile extends StatelessWidget {
  const GetinTouchMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            'Get In Touch',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ClipRRect(
              // Clip the edges for the frosted glass effect
              borderRadius: BorderRadius.circular(20),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 10, sigmaY: 10), // Apply the blur effect
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color:
                        Colors.white.withOpacity(0.2), // Semi-transparent white
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.white.withOpacity(
                          0.3), // Slight border to enhance the frosted look
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 50),
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        _buildTextField('Your Name'),
                        const SizedBox(height: 20),
                        _buildTextField('Your Email'),
                        const SizedBox(height: 20),
                        _buildTextField('Your Message',
                            maxLines: 10), // Adjusting this for larger input
                        const SizedBox(height: 30),
                        ButtonWidget(
                          label: 'Get in touch',
                          height: 50,
                          width: 200,
                          onTap: () {
                               ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text('Currently this feature is under maintenance')));
                          },
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }

  Widget _buildTextField(String hintText, {int maxLines = 1}) {
    return TextField(
      maxLines: maxLines,
      cursorColor: Colors.black,
      textCapitalization: TextCapitalization.sentences,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white, // Slightly transparent white background
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
