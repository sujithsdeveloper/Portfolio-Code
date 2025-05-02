import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/BuildDatas.dart';
import 'package:webapp/view/web/mainPages/Home/Home_app_bar/widgets/contactMeDialouge.dart';
import 'package:webapp/view/web/widgets/Button_widget.dart';

class Mobiledrawer extends StatelessWidget {
  const Mobiledrawer(
      {super.key, required this.onDrawerTap, required this.scaffoldKey});

  final Function(int navIndex) onDrawerTap;
  final Key scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      color: Colors.black,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              const SizedBox(width: 20),
            ],
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: navTiles.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    onDrawerTap(index); 
                  },
                  child: ListTile(
                      leading: DrawerIcons[index],
                      title: navTiles[index](context)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
