import 'package:e_quiz_app/controller/AuthController.dart';
import 'package:e_quiz_app/controller/DataController.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class HomeTab extends StatelessWidget {
  var controller = Get.put(DataController());
  var usermodel = Get.put(AuthController());
  HomeTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.wb_sunny_outlined,
                            color: Color(0xff008280),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            "GOOD MORNING",
                            style:
                                TextStyle(color: Colors.black, fontSize: 14.sp),
                          )
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        usermodel.userModel!.fullname,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Container(
                    height: 65.25.h,
                    width: 65.25.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image:
                                AssetImage('assets/images/Group 13@2x.png'))),
                  )
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 77.h,
              width: 375.w,
              decoration: BoxDecoration(
                  color: const Color(0xffF4FBFB),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 14.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Recent Quiz",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.normal),
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.headphones_outlined,
                              color: Color(0xff008280),
                            ),
                            SizedBox(width: 10.w),
                            Text(
                              "A Basic Music Quiz",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_outline_outlined,
                          size: 40.w,
                          color: const Color(0xff008280),
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              height: 179.h,
              width: 375.w,
              decoration: BoxDecoration(
                  color: const Color(0xff2CB4B3),
                  borderRadius: BorderRadius.circular(15)),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: 6.79.h,
                    left: 5.w,
                    child: Container(
                      height: 62.h,
                      width: 62.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Group 13@2x.png'))),
                    ),
                  ),
                  Positioned(
                    bottom: 6.79.h,
                    right: 5.w,
                    child: Container(
                      height: 62.h,
                      width: 62.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Group 12@2x.png'))),
                    ),
                  ),
                  Positioned(
                    top: -90.h,
                    right: -60.w,
                    child: Container(
                      height: 200.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              opacity: 0.5,
                              image:
                                  AssetImage('assets/images/Group 57@2x.png'))),
                    ),
                  ),
                  Positioned(
                    bottom: -90.h,
                    left: -60.w,
                    child: Container(
                      height: 200.h,
                      width: 150.w,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              opacity: 0.5,
                              image:
                                  AssetImage('assets/images/Group 57@2x.png'))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 80.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Featured",
                          style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Text(
                          "Take part in Challenges with Friends or Others",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.normal,
                              color: Colors.white),
                        ),
                        Container(
                          height: 33.h,
                          width: 144.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(
                                Icons.group_add_outlined,
                                color: const Color(0xff2CB4B3),
                                size: 32.w,
                              ),
                              Text(
                                "Find Friends",
                                style: TextStyle(
                                    color: Color(0xff2CB4B3), fontSize: 15.sp),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.h),
            Container(
              width: 428.w,
              decoration: BoxDecoration(
                  color: const Color(0xff2CB4B3).withOpacity(0.05),
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(33),
                      topRight: Radius.circular(33))),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Live Quizzes",
                          style: TextStyle(
                              fontSize: 25.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          "See all",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.normal,
                              color: const Color(0xff008280)),
                        )
                      ],
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: controller.subcategory!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.h),
                          child: Container(
                            height: 72.h,
                            width: 371.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color:
                                    const Color(0xff2CB4B3).withOpacity(0.05)),
                            child: ListTile(
                              leading: Container(
                                height: 72.h,
                                width: 77.h,
                                decoration: BoxDecoration(
                                    color: const Color(0xff41B9B8),
                                    borderRadius: BorderRadius.circular(10)),
                                child: ColorFiltered(
                                  child: Image.network(
                                    controller.findcategoryofsubcatimage(index),
                                    scale: 2.5.sp,
                                  ),
                                  colorFilter: ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcATop,
                                  ),
                                ),
                              ),
                              title: Text(
                                "${controller.subcategory![index].name} Quiz",
                                style: TextStyle(
                                    fontSize: 15.sp, color: Colors.black),
                              ),
                              subtitle: Text(
                                '${controller.findcategoryofsubcat(index)} | 12 Question',
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w100),
                              ),
                              trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.chevron_right_outlined,
                                    color: Color(0xff707070),
                                  )),
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
