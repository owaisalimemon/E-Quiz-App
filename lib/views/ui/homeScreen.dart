import 'dart:ffi';

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:e_quiz_app/controller/AuthController.dart';
import 'package:e_quiz_app/controller/Bottomnavcontroller.dart';
import 'package:e_quiz_app/controller/DataController.dart';
import 'package:e_quiz_app/models/UserModel.dart';

import 'package:e_quiz_app/views/ui/GetStartedScreen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  var controller = Get.put(Bottomnavcontroller(), permanent: true);

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(true),
        child: GetBuilder<Bottomnavcontroller>(builder: (controller) {
          return Scaffold(
            backgroundColor: Colors.white,
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            floatingActionButton: FloatingActionButton(
              backgroundColor: Color(0xFF2CB4B3),
              child: Icon(
                Icons.play_arrow_outlined,
                color: Colors.white,
                size: 40.w,
              ),
              onPressed: () {
                print('test');
                if (!controller.checkforhome) {
                  controller.checkforhome = true;
                }
              },
            ),
            // floatingActionButton: FloatingActionBubblee(
            //   items: <Bubblee>[
            //     // Floating action menu item
            //     Bubblee(
            //       image: '',
            //       title: "",
            //       iconColor: Colors.white,
            //       bubbleColor: Colors.transparent,
            //       icon: Icons.settings,
            //       titleStyle: TextStyle(fontSize: 0, color: Colors.white),
            //       onPress: () {
            //         controller.setanimation().reverse();
            //       },
            //     ),
            //     Bubblee(
            //       image: '',
            //       title: "",
            //       iconColor: Colors.white,
            //       bubbleColor: Colors.transparent,
            //       icon: Icons.settings,
            //       titleStyle: TextStyle(fontSize: 0, color: Colors.white),
            //       onPress: () {
            //         controller.setanimation().reverse();
            //       },
            //     ),
            //     Bubblee(
            //       image: '',
            //       title: "",
            //       iconColor: Colors.white,
            //       bubbleColor: Colors.transparent,
            //       icon: Icons.settings,
            //       titleStyle: TextStyle(fontSize: 0, color: Colors.white),
            //       onPress: () {
            //         controller.setanimation().reverse();
            //       },
            //     ),
            //   ],
            //   onPress: () {
            //     controller.setanimation().isCompleted
            //         ? controller.setanimation().reverse()
            //         : controller.setanimation().forward();
            //   },
            //   iconColor: Colors.white,
            //   backGroundColor: Color(0xFF2CB4B3),
            //   animation: controller.setanimationvariable(),
            //   iconData: Icons.play_arrow_outlined,
            // ),
            body: controller.checkforhome
                ? Container(
                    color: Colors.amber,
                  )
                : SafeArea(child: controller.screens[controller.currentindex]),
            bottomNavigationBar: AnimatedBottomNavigationBar(
                backgroundColor: Colors.white,
                elevation: 10,
                icons: [
                  Icons.home_outlined,
                  Icons.search_outlined,
                  Icons.leaderboard_outlined,
                  Icons.person_outline
                ],
                activeIndex: controller.currentindex,
                iconSize: 40.w,
                gapWidth: 2.w,
                activeColor:
                    controller.checkforhome ? Colors.black : Color(0xFF2CB4B3),
                gapLocation: GapLocation.center,
                notchSmoothness: NotchSmoothness.defaultEdge,
                onTap: (value) {
                  controller.setindex(value);
                  controller.checkforhome = false;
                  controller.update();
                }),
          );
        }));
  }
}
