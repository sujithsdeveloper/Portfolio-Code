

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactButton extends StatelessWidget {

  final String label;
  final IconData icon;
  final String url;

  ContactButton({required this.label, required this.icon, required this.url});

  @override
  Widget build(BuildContext context) {
    Future<void> _launchUrl(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    throw 'Could not launch $url';
  }
}
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withOpacity(0.2),
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        onPressed: () => _launchUrl(url),
        icon: Icon(icon, color: Colors.white),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
    );
  }
}
