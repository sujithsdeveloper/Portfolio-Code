import 'package:flutter/material.dart';

class HeaderMobile extends StatelessWidget {
  HeaderMobile({super.key, required this.onDrawerTap});

  Function()? onDrawerTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                content: Text('Sujith S'),
              ));
              
            },
            child: const Text('Sujith S',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          ),
          const Spacer(),
          IconButton(
              onPressed: onDrawerTap,
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ))
        ],
      ),
    );
  }
}
