import 'package:flutter/material.dart';
import 'package:webapp/utils/constants/assetsConstants.dart';
import 'package:webapp/utils/functions/appFunctions.dart';

String myName = 'Sujith';
List<Widget Function(BuildContext)> navTiles = [
  (context) => Text('Home', style: navTileStyle()),
  (context) => Text('Portfolio', style: navTileStyle()),
  (context) => Text('Works', style: navTileStyle()),
  (context) => Text('About', style: navTileStyle()),
  (context) => Container(
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          gradient:
              const LinearGradient(colors: [Color(0xff814ceb), Color(0xff2d155d)])),
      child: const Center(
        child: Text(
          'Contact Me',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ))
];


 List<Icon> DrawerIcons = [
  const Icon(Icons.home, color: Colors.white),
  const Icon(Icons.person, color: Colors.white),
  const Icon(Icons.handyman, color: Colors.white),
  const Icon(Icons.south_america, color: Colors.white),
  const Icon(Icons.account_box_outlined, color: Colors.white),
];

List<Map> skillsDatas = [
  {'label': 'Fluter', 'image': ImageConstants.FLUTTER_IMAGE},
  {'label': 'Dart', 'image': ImageConstants.DART_IMAGE},
  {'label': 'Firebase', 'image': ImageConstants.FIREBASE_IMAGE},
  {'label': 'Python', 'image': ImageConstants.PYTHON_IMAGE},
  {'label': 'Java', 'image': ImageConstants.JAVA_IMAGE},
  {'label': 'C++', 'image': ImageConstants.C},
  {'label': 'Figma', 'image': ImageConstants.FIGMA_IMAGE},
];

List<Map> workCardData = [
  {
    'title': 'Portfolio Website',
    'subtitle': 'A responsive portfolio website of myselfe ',
    'imgPath': ImageConstants.PORTFOLIO_SITE,
    'platform': 'GitHub'
  },
  {
    'title': 'Telegram Clone',
    'subtitle': 'A clone of telegram using flutter and Hive as local database',
    'imgPath': ImageConstants.TELEGRAM,
    'platform': 'GitHub'
  },
  {
    'title': 'Netflix Clone',
    'subtitle': 'A clone of Netflix using flutter and Hive as local database',
    'imgPath': ImageConstants.NETFLIX,
    'platform': 'GitHub'
  },
  {
    'title': 'ToDo',
    'subtitle': 'A simple Todo app Using hive as local database',
    'imgPath': ImageConstants.TODO,
    'platform': 'GitHub'
  },
  {
    'title': 'Whatsapp Clone',
    'subtitle': 'A clone of Whatsapp using flutter and Hive as local database',
    'imgPath': ImageConstants.WHATSAPP,
    'platform': 'GitHub'
  },
  {
    'title': 'Montra',
    'subtitle':
        'A Expense tracker app using flutter and Hive as local database',
    'imgPath': ImageConstants.MONTRA,
    'platform': 'GitHub'
  },
];

String lorum =
    '''Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.
The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham. Where can I get some?
There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. ''';
String resumeUrl =
    'https://drive.google.com/file/d/1GJrnNKzJYjomU3YPnddbTy2aB6ITjhPE/view?usp=drive_link';

class worksAndProjectsPage {
  static const List worksAndProjectsDatas = [
    {
      'title': 'Circle - A Social Media Application',
      'titleImage': ImageConstants.CIRCLE,
      'subtitle':
          'Circle is a social media app developed in Flutter with Hive for chat data storage. It includes a home screen, user authentication, and real-time chatting features.',
      'featrues': <String>[
        '- Splash screen and login/signup functionality',
        '- Home screen with dark and light themes',
        '- Chat list with active conversations',
        '- Real-time chat and messaging'
      ],
      'image': <String>[
        circleImageConstants.circle_splash,
        circleImageConstants.circle_login,
        circleImageConstants.circle_signup,
        circleImageConstants.circle_home,
        circleImageConstants.circle_chatList,
        circleImageConstants.circle_chat,
        circleImageConstants.circle_chatMessage,
        circleImageConstants.circle_chatmenu
      ],
    },
    {
      'title': 'Telegram Clone - A Flutter Project',
      'titleImage': ImageConstants.TELEGRAM,
      'subtitle':
          'This is a Telegram Clone developed using Flutter and Hive for local storage. It replicates the core features of Telegram with a clean user interface and efficient data handling',
      'featrues': <String>[
        '- Home Screen showing active chats',
        '- Settings Screen for preferences',
        '- Message with Hive storage'
      ],
      'image': <String>[
        TelegramImageConstants.TELEGRAM_HOME,
        TelegramImageConstants.TELEGRAM_CHAT,
        TelegramImageConstants.TELEGRAM_MSG_SNT,
        TelegramImageConstants.TELEGRAM_TYPING,
        TelegramImageConstants.TELEGRAM_CHAT_POPUPMENU,
        TelegramImageConstants.TELEGRAM_SETTINGS
      ],
    },
    {
      'title': 'Todo App - A Task Management Application',
      'titleImage': ImageConstants.TODO,
      'subtitle':
          'A task management app developed using Flutter and Hive. This app allows users to organize their daily tasks efficiently with features like task addition, editing, and deletion.',
      'featrues': <String>[
        '- About Us page for app details',
        '- Bottom sheet for adding tasks',
        '- Task editing and deletion',
        '- User profile management'
      ],
      'image': <String>[
        TodoImageConstants.todo_aboutus,
        TodoImageConstants.todo_bottomsheet,
        TodoImageConstants.todo_bottomshett_withoutData,
        TodoImageConstants.todo_bottomshettdata,
        TodoImageConstants.todo_deleteDatas,
        TodoImageConstants.todo_edit_profile,
        TodoImageConstants.todo_getstarted,
        TodoImageConstants.todoProfile
      ],
    },
  ];
}
