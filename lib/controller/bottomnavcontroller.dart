import 'package:e_quiz_app/views/ui/HomeTab.dart';
import 'package:e_quiz_app/views/ui/LeaderBoardTab.dart';
import 'package:e_quiz_app/views/ui/LoginScreen.dart';
import 'package:e_quiz_app/views/ui/ProfileTab.dart';
import 'package:e_quiz_app/views/ui/SearchTab.dart';
import 'package:e_quiz_app/views/ui/SignupScreen.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Bottomnavcontroller extends GetxController
    with GetTickerProviderStateMixin {
  Bottomnavcontroller() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
  }

  bool checkforhome = false;
  int currentindex = 0;

  setindex(int index) {
    currentindex = index;
  }

  Animation<double>? _animation;
  AnimationController? _animationController;

  AnimationController setanimation() {
    return _animationController!;
  }

  Animation<double> setanimationvariable() {
    return _animation!;
  }

  List screens = [HomeTab(), SearchTab(), LeaderBoardTab(), ProfileTab()];
}
