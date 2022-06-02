import 'package:e_quiz_app/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeaderboardController extends GetxController {
  LeaderboardController() {
    selectedprofileindex.value = -1;
  }
  RxInt toggleindex = 0.obs;

  RxInt selectedprofileindex = 0.obs;

  chaangeselectedprofile(index) {
    selectedprofileindex.value = index;
  }

  setindex(index) {
    toggleindex.value = index;
  }

  List<Userdata> userdata = [
    Userdata(
        name: 'Syed Izhan',
        image: 'assets/images/Group 13 black@2x.png',
        points: 1024),
    Userdata(name: "Deny", image: 'assets/images/Group 13@2x.png', points: 924),
    Userdata(name: "Elie", image: 'assets/images/Group 12@2x.png', points: 800),
    Userdata(
        name: 'Harry',
        image: 'assets/images/Group 13 black@2x.png',
        points: 725),
    Userdata(
        name: 'Harry',
        image: 'assets/images/Group 13 black@2x.png',
        points: 725),
    Userdata(
        name: 'Harry',
        image: 'assets/images/Group 13 black@2x.png',
        points: 725),
  ];
}
