import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:e_quiz_app/models/usermodel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LeaderboardController extends GetxController {
  LeaderboardController() {
    selectedprofileindex = -1;
  }
  int toggleindex = 0;

  int selectedprofileindex = 0;

  chaangeselectedprofile(index) {
    selectedprofileindex = index;
  }

  setindex(index) {
    toggleindex = index;
  }
}
