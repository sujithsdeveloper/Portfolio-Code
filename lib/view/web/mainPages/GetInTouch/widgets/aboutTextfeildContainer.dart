import 'package:flutter/material.dart';
import 'package:webapp/view/web/widgets/Button_widget.dart';

class aboutTextfeildContainer extends StatelessWidget {
  const aboutTextfeildContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                cursorColor: Colors.black,
                textCapitalization: TextCapitalization.sentences,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person, color: Colors.black54),
                  hintText: 'Your Name',
                  hintStyle: const TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                ),
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: TextField(
                cursorColor: Colors.black,
                textCapitalization: TextCapitalization.sentences,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email, color: Colors.black54),
                  hintText: 'Your Email',
                  hintStyle: const TextStyle(color: Colors.black54),
                  filled: true,
                  fillColor: Colors.white.withOpacity(0.8),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  contentPadding: const EdgeInsets.all(20),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        TextField(
          maxLines: 10,
          cursorColor: Colors.black,
          textCapitalization: TextCapitalization.sentences,
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            hintText: 'Your Message',
            hintStyle: const TextStyle(color: Colors.black54),
            filled: true,
            fillColor: Colors.white.withOpacity(0.8),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15),
            ),
            contentPadding: const EdgeInsets.all(20),
          ),
        ),
        const SizedBox(height: 20),
        Align(
          alignment: Alignment.center,
          child: ButtonWidget(
            label: 'Send Message',
            height: 50,
            width: 200,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content:
                      Text('Currently this feature is under maintenance')));
            },
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}
