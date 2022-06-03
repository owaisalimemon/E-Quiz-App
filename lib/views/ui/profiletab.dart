import 'package:e_quiz_app/controller/authcontroller.dart';
import 'package:e_quiz_app/views/ui/widgets/matchesimagewithcrown.dart';
import 'package:e_quiz_app/views/ui/widgets/profileinfodesign.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileTab extends StatelessWidget {
  var usermodel = Get.put(AuthController());
  ProfileTab({Key? key}) : super(key: key);

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
              fontSize: 35.w,
              color: Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Color(0xff008280),
                size: 36.w,
              ))
        ],
      ),
      body: SingleChildScrollView(
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
                  padding: EdgeInsets.only(top: 50.h, left: 17.w, right: 17.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        usermodel.userModel!.fullname,
                        style: TextStyle(fontSize: 25.w, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Code : Designerxyz",
                            style:
                                TextStyle(fontSize: 12.w, color: Colors.black),
                          ),
                          SizedBox(width: 5.w),
                          GestureDetector(
                            onTap: () {},
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
                                pointsorrank: usermodel.userModel!.points,
                                hash: false),
                            Container(
                              height: 77.h,
                              width: 2,
                              color: Colors.white,
                            ),
                            ProfileInfoDesign(
                                icon: Icons.public,
                                title: 'World Rank',
                                pointsorrank: usermodel.userModel!.worldrank,
                                hash: true),
                            Container(
                              height: 77.h,
                              width: 2,
                              color: Colors.white,
                            ),
                            ProfileInfoDesign(
                                icon: Icons.tag,
                                title: 'Social Rank',
                                pointsorrank: usermodel.userModel!.socialrank,
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
                                        fontSize: 22.w, color: Colors.black),
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
                                                          fontSize: 22.w,
                                                          color: Colors.black),
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
                                                      color: Color(0xff5CFF00),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              7)),
                                                  child: Center(
                                                    child: Text(
                                                      '+150 Pt',
                                                      style: TextStyle(
                                                          fontSize: 15.w,
                                                          color: Colors.white),
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
    );
  }
}
