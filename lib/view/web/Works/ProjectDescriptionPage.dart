import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gradient_text/flutter_gradient_text.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';

class ProjectDescriptionPage extends StatefulWidget {
  const ProjectDescriptionPage({super.key, required this.parentIndex});
  final int parentIndex;
  @override
  // ignore: library_private_types_in_public_api
  _ProjectDescriptionPageState createState() => _ProjectDescriptionPageState();
}

class _ProjectDescriptionPageState extends State<ProjectDescriptionPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String comments = '';
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final commentController = TextEditingController();

  Future<void> _preloadImage(String assetPath) {
    return rootBundle.load(assetPath); // Preload the image from asset
  }

  @override
  Widget build(BuildContext context) {
    String title =
        worksAndProjectsPage.worksAndProjectsDatas[widget.parentIndex]['title'];
    String subtitle = worksAndProjectsPage
        .worksAndProjectsDatas[widget.parentIndex]['subtitle'];
    List imageList =
        worksAndProjectsPage.worksAndProjectsDatas[widget.parentIndex]['image'];
    List featruesList = worksAndProjectsPage
        .worksAndProjectsDatas[widget.parentIndex]['featrues'];

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GradientText(
              Text(
                title,
                style:
                    const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              colors: const [Color(0xff814ceb), Color(0xff2d155d)],
            ),
            const SizedBox(height: 10),
            Text(
              subtitle,
              style:
                  TextStyle(fontSize: 16, color: Colors.white.withOpacity(0.8)),
            ),
            const SizedBox(height: 20),
            const Text(
              'Features:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 5),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(
                featruesList.length,
                (index) => Text(featruesList[index],
                    style: const TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Screenshots:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  imageList.length,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 550,
                      child: FutureBuilder(
                        future: _preloadImage(imageList[index]),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState ==
                              ConnectionState.done) {
                            if (snapshot.hasError) {
                              return const Icon(Icons.error);
                            }
                            // Show the image when loaded
                            return Image.asset(imageList[index]);
                          } else {
                            // Show CircularProgressIndicator while loading
                            return const Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 200),
                                child: CircularProgressIndicator(),
                              ),
                            );
                          }
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Share Your Opinion:',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrostedTextField(
                    label: 'Name',
                    controller: nameController,
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  _buildFrostedTextField(
                    label: 'Email',
                    controller: emailController,
                    onChanged: (value) {
                      setState(() {
                        email = value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty || !value.contains('@')) {
                        return 'Please enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 10),
                  _buildFrostedTextField(
                    label: 'Comments',
                    controller: commentController,
                    maxLines: 4,
                    onChanged: (value) {
                      setState(() {
                        comments = value;
                      });
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your comments';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 20),
                  _buildGradientButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFrostedTextField({
    required String label,
    required TextEditingController controller,
    required Function(String) onChanged,
    required String? Function(String?) validator,
    int maxLines = 1,
  }) {
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
              color: Colors.white.withOpacity(0.3),
            ),
          ),
          child: TextFormField(
            controller: controller,
            onChanged: onChanged,
            validator: validator,
            maxLines: maxLines,
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

  Widget _buildGradientButton() {
    return InkWell(
      onTap: () {
        if (_formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Feedback Submitted!')),
          );

          nameController.clear();
          emailController.clear();
          commentController.clear();
        }
      },
      child: GestureDetector(
        onTap: () {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text('Currently this feature is under maintenance')));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: const LinearGradient(
              colors: [Color(0xff814ceb), Color(0xff2d155d)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Submit Feedback',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
