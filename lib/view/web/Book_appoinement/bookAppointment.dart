import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:webapp/controller/webController.dart';

import 'package:webapp/view/web/widgets/Button_widget.dart';

class BookAppointment extends StatelessWidget {
  final String title;
  const BookAppointment({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final platformProvider = Provider.of<Webcontroller>(context);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: Text(title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Book Your Appointment",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    foreground: Paint()
                      ..shader = const LinearGradient(
                        colors: [Color(0xff814ceb), Color(0xff2d155d)],
                      ).createShader(
                          const Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                  ),
                ),
                // Lottie.asset(AnimationConstants.Book_appoinement),
              ],
            ),
            const SizedBox(height: 20),
         
            const Text(
              "Fill out the form below to book an appointment. We provide support for various platforms including Android, iOS, Web, and Desktop. Choose the platforms you're interested in and provide your details to confirm the booking.",
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            const SizedBox(height: 20),
            Form(
              key:
                  GlobalKey<FormState>(), 
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildTextField("Name", TextEditingController(), (value) {
                    if (value!.isEmpty) return 'Please enter your name';
                    return null;
                  }),
                  const SizedBox(height: 10),
                  _buildTextField("Email", TextEditingController(), (value) {
                    if (value!.isEmpty ||
                        !RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  }),
                  const SizedBox(height: 10),
                  _buildTextField("Phone Number", TextEditingController(),
                      (value) {
                    if (value!.isEmpty) return 'Please enter your phone number';
                    return null;
                  }),
                  const SizedBox(height: 20),
                  const Text(
                    "Select Platforms",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildCheckbox(
                        context,
                        label: "Android",
                        value: platformProvider.isAndroid,
                        onChanged: (bool? value) {
                          platformProvider.toggleAndroid(value ?? false);
                        },
                      ),
                      _buildCheckbox(
                        context,
                        label: "iOS",
                        value: platformProvider.isIos,
                        onChanged: (bool? value) {
                          platformProvider.toggleIos(value ?? false);
                        },
                      ),
                      _buildCheckbox(
                        context,
                        label: "Web",
                        value: platformProvider.isWeb,
                        onChanged: (bool? value) {
                          platformProvider.toggleWeb(value ?? false);
                        },
                      ),
                      _buildCheckbox(
                        context,
                        label: "Desktop",
                        value: platformProvider.isDesktop,
                        onChanged: (bool? value) {
                          // platformProvider.toggleDesktop(value ?? false);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  ButtonWidget(
                    label: 'Submit',
                    height: 50,
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                          content: Text(
                              'Currently this feature is under maintenance')));
                      if (GlobalKey<FormState>().currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Appointment Booked!')),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCheckbox(BuildContext context,
      {required String label,
      required bool value,
      required Function(bool?) onChanged}) {
    return Row(
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Text(label, style: const TextStyle(color: Colors.white)),
      ],
    );
  }


  Widget _buildTextField(String label, TextEditingController controller,
      String? Function(String?) validator) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.white.withOpacity(0.2),
            ),
          ),
          child: TextFormField(
            controller: controller,
            validator: validator,
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
