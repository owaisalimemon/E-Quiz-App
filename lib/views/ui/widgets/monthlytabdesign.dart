import 'package:e_quiz_app/controller/leaderboardcontroller.dart';
import 'package:e_quiz_app/views/ui/login.dart';
import 'package:e_quiz_app/views/ui/widgets/positionholderdesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MonthyTabDesign extends StatelessWidget {
  MonthyTabDesign({Key? key}) : super(key: key);

  var controller = Get.put(permanent: true, LeaderboardController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 350.h,
              width: 427.w,
              color: Colors.white,
            ),
            Positioned(
              bottom: -100,
              child: Container(
                height: 427.h,
                width: 427.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ellipse 69@2x.png'))),
              ),
            ),
            Positioned(
              bottom: -60,
              child: Container(
                height: 335.h,
                width: 335.w,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/Ellipse 68@2x.png'))),
              ),
            ),
            Container(
              height: 204.48.h,
              width: 273.29.w,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/leaderboard position@2x.png'))),
            ),
            Positioned(
              bottom: 50.h,
              child: Text(
                '1',
                style: TextStyle(
                    fontSize: 70.w,
                    color: Colors.white,
                    fontFamily: 'Symbol,Regular'),
              ),
            ),
            Positioned(
              bottom: 30.h,
              left: 110.w,
              child: Text(
                '2',
                style: TextStyle(
                    fontSize: 70.w,
                    color: Colors.white,
                    fontFamily: 'Symbol,Regular'),
              ),
            ),
            Positioned(
              bottom: 10.h,
              right: 110.w,
              child: Text(
                '3',
                style: TextStyle(
                    fontSize: 70.w,
                    color: Colors.white,
                    fontFamily: 'Symbol,Regular'),
              ),
            ),
            Positioned(
              top: 40.h,
              child: PositionHolderDesign(
                  image: controller.userdata[0].image,
                  name: controller.userdata[0].name,
                  points: controller.userdata[0].points,
                  first: true),
            ),
            Positioned(
              top: 90.h,
              left: 100.w,
              child: PositionHolderDesign(
                  image: controller.userdata[1].image,
                  name: controller.userdata[1].name,
                  points: controller.userdata[1].points,
                  first: false),
            ),
            Positioned(
              top: 113.h,
              right: 73.w,
              child: PositionHolderDesign(
                  image: controller.userdata[2].image,
                  name: controller.userdata[2].name,
                  points: controller.userdata[2].points,
                  first: false),
            )
          ],
        ),
        Container(
          width: 428.w,
          decoration: BoxDecoration(
              color: Color(0xffD8F8F8),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(33), topRight: Radius.circular(33))),
          child: Padding(
            padding: EdgeInsets.only(top: 25.h, bottom: 10.h),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: controller.userdata.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 5.h, horizontal: 23.w),
                  child: Container(
                    height: 79.h,
                    width: 381.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        color: Colors.white),
                    child: Center(
                      child: ListTile(
                          leading: Container(
                            height: 62.28.h,
                            width: 62.28.w,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    image: AssetImage(
                                        controller.userdata[index].image))),
                          ),
                          title: Text(
                            controller.userdata[index].name,
                            style:
                                TextStyle(fontSize: 18.w, color: Colors.black),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                controller.userdata[index].points.toString(),
                                style: TextStyle(
                                    fontSize: 15.w, color: Color(0xff2CB4B3)),
                              ),
                              Text(
                                " Points",
                                style: TextStyle(
                                    fontSize: 15.w, color: Colors.black),
                              ),
                            ],
                          ),
                          trailing: GetBuilder<LeaderboardController>(
                            builder: ((controller) {
                              return Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (controller.selectedprofileindex ==
                                          index) {
                                        Get.to(LoginScreen());
                                      }
                                      controller.chaangeselectedprofile(index);
                                      controller.update();
                                    },
                                    child: Container(
                                      height: 22.h,
                                      width: controller.selectedprofileindex ==
                                              index
                                          ? 49.24.w
                                          : 15.w,
                                      decoration: BoxDecoration(
                                          color: Color(0xff2CB4B3),
                                          borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(10),
                                              bottomLeft: Radius.circular(10))),
                                      child: Center(
                                        child: Text(
                                          controller.selectedprofileindex ==
                                                  index
                                              ? "Profile"
                                              : ' ',
                                          style: TextStyle(
                                              fontSize: 12.w,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              );
                            }),
                          )),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
