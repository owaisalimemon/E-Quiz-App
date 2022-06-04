import 'package:e_quiz_app/controller/LeaderboardController.dart';

import 'package:e_quiz_app/views/ui/widgets/MonthyTabDesign.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

class LeaderBoardTab extends StatelessWidget {
  var controller = Get.put(permanent: true, LeaderboardController());
  LeaderBoardTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Color(0xff008280),
              size: 26.61.w,
            )),
        centerTitle: true,
        title: Text(
          'Leaderboard',
          style: TextStyle(
              fontSize: 35.sp,
              color: Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Center(
              child: ToggleSwitch(
                initialLabelIndex: controller.toggleindex,
                totalSwitches: 2,
                cornerRadius: 10,
                customWidths: [153.w, 153.w],
                customHeights: [47.h, 47.h],
                borderWidth: 1,
                borderColor: [Color(0xff41B9B8), Color(0xff41B9B8)],
                inactiveBgColor: Color(0xff41B9B8),
                activeBgColor: [Color(0xff81d9d9), Color(0xff81d9d9)],
                customTextStyles: [
                  TextStyle(fontSize: 25.sp, color: Colors.white),
                  TextStyle(fontSize: 25.sp, color: Colors.white)
                ],
                labels: ['Monthly', 'Weekly'],
                onToggle: (index) {
                  controller.setindex(index);
                  controller.update();
                },
              ),
            ),
            SizedBox(height: 20.h),
            GetBuilder<LeaderboardController>(builder: (controller) {
              return controller.toggleindex == 0
                  ? MonthyTabDesign()
                  : MonthyTabDesign();
            })
          ]),
        ),
      ),
    );
  }
}
