import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:simple_icons/simple_icons.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webapp/view/web/mainPages/Home/Home_app_bar/contactButton.dart';

Future<dynamic> contactDialouge(BuildContext context) {
  Future<void> _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Colors.transparent,
            content: Center(
              child: Container(
                height: 600,
                width: 500,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white.withOpacity(0.2)),
                  boxShadow: const [
                     BoxShadow(
                      blurRadius: 10,
                      color: Colors.black26,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Contact Me',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 10),
                          const Text(
                            "I'm always open to connect, feel free to reach out through any of the platforms below.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          ),
                          const SizedBox(height: 30),
                          ContactButton(
                            label: 'GitHub',
                            icon: SimpleIcons.github,
                            url: 'https://github.com/sujithsdeveloper',
                          ),
                          ContactButton(
                            label: 'LinkedIn',
                            icon: SimpleIcons.linkedin,
                            url:
                                'https://www.linkedin.com/in/sujithsdeveloper/',
                          ),
                          ContactButton(
                            label: 'Instagram',
                            icon: SimpleIcons.instagram,
                            url: 'https://www.instagram.com/_wandering_b.o.y_/',
                          ),
                          ContactButton(
                            label: 'WhatsApp',
                            icon: SimpleIcons.whatsapp,
                            url: 'https://wa.me/9746696329',
                          ),
                          const SizedBox(height: 20),
                          const Divider(color: Colors.white24),
                          const SizedBox(height: 10),
                          const Text(
                            'Follow Me',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                icon: const Icon(SimpleIcons.github,
                                    color: Colors.white),
                                onPressed: () => _launchUrl(
                                    'https://github.com/sujithsdeveloper'),
                              ),
                              IconButton(
                                icon: const Icon(SimpleIcons.linkedin,
                                    color: Colors.white),
                                onPressed: () => _launchUrl(
                                    'https://www.linkedin.com/in/sujithsdeveloper/'),
                              ),
                              IconButton(
                                icon: const Icon(SimpleIcons.instagram,
                                    color: Colors.white),
                                onPressed: () => _launchUrl(
                                    'https://www.instagram.com/_wandering_b.o.y_/'),
                              ),
                              IconButton(
                                icon: const Icon(SimpleIcons.whatsapp,
                                    color: Colors.white),
                                onPressed: () =>
                                    _launchUrl('https://wa.me/9746696329'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ));
}
