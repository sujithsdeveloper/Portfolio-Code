import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/utils/constants/globalConstants.dart';
import 'package:webapp/utils/CustomWidgets/OnHover.dart';
import 'package:webapp/view/mainPages/GetInTouch/get_in_touch_desktop.dart';
import 'package:webapp/view/mainPages/GetInTouch/getin_touch_mobile.dart';
import 'package:webapp/view/mainPages/Home/Home_app_bar/widgets/contactMeDialouge.dart';
import 'package:webapp/view/mainPages/homePage/widgets/mobileDrawer.dart';
import 'package:webapp/view/mainPages/homePage/HomeElements/HomeBodyDesktop.dart';
import 'package:webapp/view/mainPages/homePage/HomeElements/HomeBodyMobile.dart';
import 'package:webapp/view/mainPages/portfolioPage/PortfoilioDesktop.dart';
import 'package:webapp/view/mainPages/portfolioPage/PortfolioMobile.dart';
import 'package:webapp/view/mainPages/workPage/DesktopWorkpageContainer.dart';
import 'package:webapp/view/mainPages/workPage/MobileWorkpageContainer.dart';
import 'package:webapp/view/mainPages/aboutPage/DesktopAboutpageContainer.dart';
import 'package:webapp/view/mainPages/aboutPage/MobileAboutpageContainer.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final ScrollController scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  void scrollToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    if (key.currentContext != null) {
      Scrollable.ensureVisible(
        key.currentContext!,
        duration: const Duration(milliseconds: 700),
        curve: Curves.easeInOut,
      );
    } else {
      print("Key context not found for section: $navIndex");
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            leadingWidth: 200,
            leading: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sujith S',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            actions: constraints.maxWidth >= mobileMinimumWith
                ? List.generate(
                    navTiles.length,
                    (index) => index == navTiles.length - 1
                        ? Padding(
                            padding: const EdgeInsets.only(right: 5),
                            child: OnHover(
                              wantTransform: false,
                              builder: (isHovered) => InkWell(
                                onTap: () => contactDialouge(context),
                                child: Container(
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(22),
                                        gradient: LinearGradient(
                                            colors: isHovered
                                                ? [Colors.white, Colors.white]
                                                : [
                                                    const Color(0xff814ceb),
                                                    const Color(0xff2d155d)
                                                  ])),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Text(
                                          'Contact Me',
                                          style: TextStyle(
                                            color: isHovered
                                                ? Colors.black
                                                : Colors.white,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                    )),
                              ),
                            ),
                          )
                        : TextButton(
                            style: const ButtonStyle(
                                splashFactory: NoSplash.splashFactory),
                            onPressed: () {
                              scrollToSection(index);
                            },
                            child: OnHover(
                              wantTransform: true,
                              builder: (isHovered) => navTiles[index](context),
                            ),
                          ),
                  )
                : [
                    IconButton(
                      icon: const Icon(Icons.menu),
                      onPressed: () =>
                          scaffoldKey.currentState?.openEndDrawer(),
                    )
                  ],
          ),
          backgroundColor: Colors.black,
          key: scaffoldKey,
          endDrawer: constraints.maxWidth >= desktopMinimumWith
              ? null
              : Mobiledrawer(
                  scaffoldKey: scaffoldKey,
                  onDrawerTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToSection(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            controller: scrollController,
            child: SafeArea(
              child: Column(
                children: [
                  // Home page
                  Container(
                    key: navbarKeys[0],
                    child: constraints.maxWidth >= homeImageWantedWidth
                        ? HomeBodyDesktop(
                            buttonTap: () {
                              scrollToSection(4);
                            },
                          )
                        : HomeBodyMobile(
                            onTap: () {
                              scrollToSection(4);
                            },
                          ),
                  ),
                  // Portfolio Page
                  Container(
                    key: navbarKeys[1],
                    child: constraints.maxWidth >= desktopMinimumWith
                        ? const PortfoilioDesktop()
                        : const Portfoliomobile(),
                  ),
                  // Work and project page
                  Container(
                    key: navbarKeys[2],
                    child: constraints.maxWidth >= desktopMinimumWith
                        ? const DesktopWorkpagecontainer()
                        : const MobileWorkpageContainer(),
                  ),
                  // About page
                  Container(
                    key: navbarKeys[3],
                    child: constraints.maxWidth >= desktopMinimumWith
                        ? const DesktopAboutpageContainer()
                        : const Mobileaboutpagecontainer(),
                  ),
                  // Get in Touch page
                  Container(
                    key: navbarKeys[4],
                    child: constraints.maxWidth >= desktopMinimumWith
                        ? const GetInTouchDesktop()
                        : const GetinTouchMobile(),
                  ),
                  const Text(
                    'Made by Sujith using flutter framework',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
