import 'package:e_quiz_app/controller/DataController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LevelPage extends StatelessWidget {
  LevelPage({required this.catname});
  String catname;

  var controller = Get.put(DataController(), permanent: true);

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
          catname,
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
            padding: EdgeInsets.symmetric(horizontal: 21.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    'Quiz Level',
                    style: TextStyle(fontSize: 20.sp, color: Colors.black),
                  ),
                ),
                SizedBox(height: 25.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Let\'s play',
                    style: TextStyle(
                        fontSize: 35.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.levels!.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 40.h),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Container(
                              height: 196.h,
                              width: 386.w,
                              decoration: BoxDecoration(
                                color: Color(0xffE0F4F4),
                                borderRadius: BorderRadius.circular(27),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(left: 26.w),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    GestureDetector(
                                      onTap: () {},
                                      child: Container(
                                        height: 49.h,
                                        width: 49.h,
                                        decoration: BoxDecoration(
                                          color: Color(0xff2CB4B3),
                                          borderRadius:
                                              BorderRadius.circular(11),
                                        ),
                                        child: Icon(
                                          Icons.play_arrow_outlined,
                                          color: Colors.white,
                                          size: 40.sp,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          controller.levels![index].name,
                                          style: TextStyle(
                                            color: Color(0xff319795),
                                            fontSize: 25.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'Level # ${controller.levels![index].level}',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20.w,
                              top: -25.h,
                              child: SizedBox(
                                  height: 200.h,
                                  child: Image.asset(
                                      'assets/images/undraw_quiz_re_aol4@2x.png')),
                            )
                          ],
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
