import 'package:e_quiz_app/views/ui/login.dart';
import 'package:e_quiz_app/views/ui/signup.dart';
import 'package:e_quiz_app/views/ui/widgets/hometab.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class Bottomnavcontroller extends GetxController {
  Bottomnavcontroller() {
    currentindex.value = 0;
  }
  RxBool checkforhome = false.obs;
  RxInt currentindex = 0.obs;

  setindex(int index) {
    currentindex.value = index;
  }

  List screens = [
    HomeTab(),
    Container(color: Colors.green),
    Container(color: Colors.blue),
    Container(color: Colors.yellow)
  ];
}
