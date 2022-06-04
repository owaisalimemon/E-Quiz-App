import 'package:e_quiz_app/controller/DataController.dart';
import 'package:e_quiz_app/controller/LeaderboardController.dart';

import 'package:e_quiz_app/views/ui/LoginScreen.dart';
import 'package:e_quiz_app/views/ui/UserProfile.dart';
import 'package:e_quiz_app/views/ui/widgets/PositionHolderDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MonthyTabDesign extends StatelessWidget {
  MonthyTabDesign({Key? key}) : super(key: key);

  var controller = Get.put(permanent: true, LeaderboardController());

  var datacontroller = Get.put(permanent: true, DataController());

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
                    fontSize: 70.sp,
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
                    fontSize: 70.sp,
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
                    fontSize: 70.sp,
                    color: Colors.white,
                    fontFamily: 'Symbol,Regular'),
              ),
            ),
            datacontroller.users!.length > 0
                ? Positioned(
                    bottom: 210.h,
                    child: PositionHolderDesign(
                        image: datacontroller.users![0].image,
                        name: datacontroller.users![0].fullname,
                        points: datacontroller.users![0].points,
                        first: true),
                  )
                : SizedBox(),
            datacontroller.users!.length >= 2
                ? Positioned(
                    left: 100.w,
                    bottom: 160.h,
                    child: PositionHolderDesign(
                        image: datacontroller.users![1].image,
                        name: datacontroller.users![1].fullname,
                        points: datacontroller.users![1].points,
                        first: false),
                  )
                : SizedBox(),
            datacontroller.users!.length >= 3
                ? Positioned(
                    right: 73.w,
                    bottom: 135.h,
                    child: PositionHolderDesign(
                        image: datacontroller.users![2].image,
                        name: datacontroller.users![2].fullname,
                        points: datacontroller.users![2].points,
                        first: false),
                  )
                : SizedBox()
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
              itemCount: datacontroller.users!.length,
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
                                        datacontroller.users![index].image))),
                          ),
                          title: Text(
                            datacontroller.users![index].fullname,
                            style:
                                TextStyle(fontSize: 18.sp, color: Colors.black),
                          ),
                          subtitle: Row(
                            children: [
                              Text(
                                datacontroller.users![index].points.toString(),
                                style: TextStyle(
                                    fontSize: 15.sp, color: Color(0xff2CB4B3)),
                              ),
                              Text(
                                " Points",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Colors.black),
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
                                        Get.to(UserProfile(
                                          user: datacontroller.users![index],
                                        ));
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
                                              fontSize: 12.sp,
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
