import 'package:e_quiz_app/views/ui/hometab.dart';
import 'package:e_quiz_app/views/ui/leaderboardtab.dart';
import 'package:e_quiz_app/views/ui/login.dart';
import 'package:e_quiz_app/views/ui/profiletab.dart';
import 'package:e_quiz_app/views/ui/searchtab.dart';
import 'package:e_quiz_app/views/ui/signup.dart';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Bottomnavcontroller extends GetxController
    with GetTickerProviderStateMixin {
  Bottomnavcontroller() {
    currentindex.value = 0;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController!);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);
  }

  Animation<double>? _animation;
  AnimationController? _animationController;

  AnimationController setanimation() {
    return _animationController!;
  }

  Animation<double> setanimationvariable() {
    return _animation!;
  }

  RxBool checkforhome = false.obs;
  RxInt currentindex = 0.obs;

  setindex(int index) {
    currentindex.value = index;
  }

  List screens = [HomeTab(), SearchTab(), LeaderBoardTab(), ProfileTab()];
}
