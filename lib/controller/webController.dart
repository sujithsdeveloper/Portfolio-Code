import 'package:flutter/material.dart';

class Webcontroller with ChangeNotifier {
  bool _isAndroid = false;
  bool _isIos = false;
  bool _isWeb = false;
  bool _isDesktop = false;

 bool get isAndroid => _isAndroid;
  bool get isIos => _isIos;
  bool get isWeb => _isWeb;
  bool get isDesktop => _isDesktop;


  void toggleAndroid(bool value) {
    _isAndroid = value;
    notifyListeners();
  }

  void toggleIos(bool value) {
    _isIos = value;
    notifyListeners();
  }

  void toggleWeb(bool value) {
    _isWeb = value;
    notifyListeners();
  }

  // void toggleDesktop(bool value) {
  //   _isDesktop = value;
  //   notifyListeners();
  // }



}
