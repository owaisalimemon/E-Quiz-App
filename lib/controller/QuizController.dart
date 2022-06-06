import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuizController extends GetxController {
  QuizController() {
    check = -1;
  }

  final PageController pageController = PageController(initialPage: 0);
  int answer = 1;

  List<int> answers = [];

  int check = 0;

  pagechange() {
    if (check != -1) {
      pageController.nextPage(
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    }
    check = -1;
  }

  checking(int index) {
    if (check == -1) {
      answers.add(index + 1);
    }

    if (index + 1 == answer) {
      check = 1;
    } else {
      check = 0;
    }
  }
}
