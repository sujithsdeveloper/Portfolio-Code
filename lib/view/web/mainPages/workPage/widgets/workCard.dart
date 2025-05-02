import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/constants/colorConstants.dart';
import 'package:webapp/utils/constants/globalConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';
import 'package:webapp/view/web/Works/ProjectDescriptionPage.dart';

class WorkCard extends StatelessWidget {
  WorkCard({
    super.key,
    required this.platform,
    required this.index,
  });

  final String platform;
  final int index;

  @override
  Widget build(BuildContext context) {
    String title = worksAndProjectsPage.worksAndProjectsDatas[index]['title'];
    String subtitle =
        worksAndProjectsPage.worksAndProjectsDatas[index]['subtitle'];

    // Fix: Access the first image from the image list.
    List<String> images =
        worksAndProjectsPage.worksAndProjectsDatas[index]['image'];
    String image = images[0]; // Use the first image from the list.

    return LayoutBuilder(builder: (context, constraints) {
      return constraints.maxWidth >= desktopMinimumWith
          ? // Desktop layout
          OnHover(
              wantTransform: true,
              builder: (isHovered) => Card(
                elevation: 5,
                color:Colorconstants. primaryColor,
                child: InkWell(
                  splashFactory: NoSplash.splashFactory,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProjectDescriptionPage(
                            parentIndex: index,
                          ),
                        ));
                  },
                  child: Container(
                    margin: const EdgeInsets.all(9),
                    width: 250,
                    decoration: BoxDecoration(
                        color:Colorconstants. primaryColor,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Display the first image
                          Container(
                            height: 200,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(image), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          const SizedBox(height: 9),
                          Text(
                            title,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          Text(subtitle),
                          SizedBox(
                            width: double.infinity,
                            height: 30,
                            child: Row(
                              children: [
                                Text(
                                  'Available on $platform',
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          : // Mobile layout
          InkWell(
              splashFactory: NoSplash.splashFactory,
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProjectDescriptionPage(
                        parentIndex: index,
                      ),
                    ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: Colorconstants.gradient),
                child: Container(
                  margin: const EdgeInsets.all(9),
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: const Color(0xff242735),
                              image: DecorationImage(
                                  image: AssetImage(image), fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        const SizedBox(height: 9),
                        Text(
                          title,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        Text(subtitle),
                        SizedBox(
                          width: double.infinity,
                          height: 30,
                          child: Row(
                            children: [
                              Text(
                                'Available on $platform',
                                style: const TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
    });
  }
}
