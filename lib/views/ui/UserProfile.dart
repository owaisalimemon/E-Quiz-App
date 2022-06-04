import 'package:e_quiz_app/controller/ExtraController.dart';
import 'package:e_quiz_app/models/UserModel.dart';
import 'package:e_quiz_app/views/ui/widgets/ImageWithCrown.dart';
import 'package:e_quiz_app/views/ui/widgets/ProfileInfoDesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class UserProfile extends StatelessWidget {
  UserProfile({required this.user});

  var extra = Get.put(ExtraController());

  UserModel user;

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
          'Profile',
          style: TextStyle(
              fontSize: 35.sp,
              color: Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
        // actions: [
        //   IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.settings_outlined,
        //         color: Color(0xff008280),
        //         size: 36.w,
        //       ))
        // ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 137.h),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Container(
                  width: 428.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(44),
                      border: Border.all(color: Color(0xff2CB4B3), width: 1)),
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: 50.h, left: 17.w, right: 17.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          user.fullname,
                          style:
                              TextStyle(fontSize: 25.sp, color: Colors.black),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Code : ${user.uid}",
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.black),
                            ),
                            SizedBox(width: 5.w),
                            GestureDetector(
                              onTap: () {
                                extra.copytoclipboard(user.uid);
                              },
                              child: Icon(
                                Icons.content_copy,
                                color: Colors.black,
                                size: 16.w,
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 25.h),
                        Container(
                          height: 107.h,
                          width: 394.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Color(0xff2CB4B3)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ProfileInfoDesign(
                                  icon: Icons.grade_outlined,
                                  title: 'Points',
                                  pointsorrank: user.points,
                                  hash: false),
                              Container(
                                height: 77.h,
                                width: 2,
                                color: Colors.white,
                              ),
                              ProfileInfoDesign(
                                  icon: Icons.public,
                                  title: 'World Rank',
                                  pointsorrank: user.worldrank,
                                  hash: true),
                              Container(
                                height: 77.h,
                                width: 2,
                                color: Colors.white,
                              ),
                              ProfileInfoDesign(
                                  icon: Icons.tag,
                                  title: 'Social Rank',
                                  pointsorrank: user.socialrank,
                                  hash: true)
                            ],
                          ),
                        ),
                        SizedBox(height: 25.h),
                        Padding(
                          padding: EdgeInsets.only(bottom: 50.h),
                          child: Container(
                            width: 394.w,
                            decoration: BoxDecoration(
                                color: Color(0xffC2FAF9),
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17.w, vertical: 15.h),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Recent Matches',
                                      style: TextStyle(
                                          fontSize: 22.sp, color: Colors.black),
                                    ),
                                  ),
                                  SizedBox(height: 10.h),
                                  ListView.builder(
                                      shrinkWrap: true,
                                      itemCount: 2,
                                      physics: NeverScrollableScrollPhysics(),
                                      itemBuilder: (context, index) {
                                        return Padding(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 10.h),
                                          child: Container(
                                            height: 76.h,
                                            width: 362.w,
                                            decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    BorderRadius.circular(15)),
                                            child: Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 20.w),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      ImageWithCrown(
                                                          image:
                                                              'assets/images/Group 13 black@2x.png',
                                                          crown: true),
                                                      SizedBox(width: 10.w),
                                                      Text(
                                                        "VS",
                                                        style: TextStyle(
                                                            fontSize: 22.sp,
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(width: 10.w),
                                                      ImageWithCrown(
                                                          image:
                                                              'assets/images/Group 12@2x.png',
                                                          crown: false),
                                                    ],
                                                  ),
                                                  Container(
                                                    height: 31.h,
                                                    width: 65.w,
                                                    decoration: BoxDecoration(
                                                        color:
                                                            Color(0xff5CFF00),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(7)),
                                                    child: Center(
                                                      child: Text(
                                                        '+150 Pt',
                                                        style: TextStyle(
                                                            fontSize: 15.sp,
                                                            color:
                                                                Colors.white),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      })
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: -80,
                  child: Container(
                    height: 116.28.h,
                    width: 116.28.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/images/Group 13 black@2x.png'))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
