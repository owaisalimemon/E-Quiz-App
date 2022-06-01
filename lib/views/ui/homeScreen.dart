import 'dart:ffi';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_quiz_app/controller/authcontroller.dart';
import 'package:e_quiz_app/controller/bottomnavcontroller.dart';

import 'package:e_quiz_app/views/ui/getstartedscreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<Bottomnavcontroller> {
  final controller = Get.put(Bottomnavcontroller());
  HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(true),
        child: Obx(() {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xFF2CB4B3),
              child: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
                size: 40.w,
              ),
              onPressed: () {
                print('test');
                if (!controller.checkforhome.value) {
                  controller.checkforhome.value = true;
                }
              },
            ),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            body: controller.checkforhome.value
                ? Container(
                    color: Colors.amber,
                  )
                : controller.screens[controller.currentindex.value],
            bottomNavigationBar: AnimatedBottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 10,
                icons: [
                  Icons.home_outlined,
                  Icons.search_outlined,
                  Icons.leaderboard_outlined,
                  Icons.person_outline
                ],
                activeIndex: controller.currentindex.value,
                iconSize: 40.w,
                gapWidth: 2.w,
                activeColor: controller.checkforhome.value
                    ? Colors.black
                    : Color(0xFF2CB4B3),
                gapLocation: GapLocation.center,
                notchSmoothness: NotchSmoothness.defaultEdge,
                onTap: (value) {
                  controller.setindex(value);
                  controller.checkforhome.value = false;
                }),
          );
        }));
  }
}