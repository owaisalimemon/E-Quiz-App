import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_quiz_app/controller/DataController.dart';
import 'package:e_quiz_app/views/ui/CategoryScreen.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class SearchTab extends StatelessWidget {
  var controller = Get.put(permanent: true, DataController());
  SearchTab({Key? key}) : super(key: key);

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
              color: const Color(0xff008280),
              size: 26.61.w,
            )),
        centerTitle: true,
        title: Text(
          'Discover',
          style: TextStyle(
              fontSize: 35.sp,
              color: const Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Center(
                  child: Container(
                    height: 49.h,
                    width: 334.w,
                    decoration: BoxDecoration(
                        color: const Color(0xffF4FBFB),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: 'Quiz , Category or Friends',
                          hintStyle: const TextStyle(color: Colors.black),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 25.w,
                          ),
                          // contentPadding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          border: const UnderlineInputBorder(
                              borderSide: BorderSide.none),
                        )),
                  ),
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 141.h,
                  width: 375.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff2CB4B3),
                      borderRadius: BorderRadius.circular(15)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.5.h, horizontal: 23.5.w),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 23.h,
                                width: 76.w,
                                decoration: BoxDecoration(
                                    color: const Color(0xffFFFFFF)
                                        .withOpacity(0.5),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Center(
                                  child: Text(
                                    'Top Rated',
                                    style: TextStyle(
                                        fontSize: 11.sp, color: Colors.white),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(
                                    'Music Quiz',
                                    style: TextStyle(
                                        fontSize: 20.sp,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    ' Music | 6 Question',
                                    style: TextStyle(
                                        fontSize: 12.sp,
                                        color: Colors.white.withOpacity(0.5),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 146.05.h,
                          width: 201.36.w,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/undraw_new_year_2022_bxec@2x.png'))),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 60.h),
                Container(
                  width: 428.w,
                  decoration: BoxDecoration(
                      color: const Color(0xff2CB4B3).withOpacity(0.05),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(33),
                          topRight: Radius.circular(33))),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 28.w, vertical: 20.h),
                    child: Center(
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Top Ranked Of The Week",
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Column(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                alignment: Alignment.center,
                                children: [
                                  Positioned(
                                    child: Container(
                                      width: 376.w,
                                      height: 78.h,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/Group 71@2x.png'))),
                                    ),
                                  ),
                                  Container(
                                    width: 376.w,
                                    height: 78.h,
                                    decoration: BoxDecoration(
                                        // border: Border.all(
                                        //     color: Color(0xff008280), width: 1),
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            height: 28.w,
                                            width: 28.w,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              border: Border.all(
                                                  color:
                                                      const Color(0xff008280),
                                                  width: 1),
                                              color: Colors.white,
                                            ),
                                            child: Center(
                                              child: Text(
                                                "1",
                                                style: TextStyle(
                                                    color:
                                                        const Color(0xff2CB4B3),
                                                    fontSize: 22.sp),
                                              ),
                                            ),
                                          ),
                                          SizedBox(width: 10.w),
                                          Container(
                                            height: 62.28.h,
                                            width: 62.28.w,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                    image: AssetImage(controller
                                                        .users![0].image))),
                                          ),
                                          SizedBox(width: 10.w),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                controller.users![0].fullname,
                                                style: TextStyle(
                                                    fontSize: 20.sp,
                                                    color: const Color(
                                                        0xff2CB4B3)),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    '${controller.users![0].points} Points',
                                                    style: TextStyle(
                                                        fontSize: 12.sp,
                                                        color: const Color(
                                                            0xff2CB4B3)),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    color: Colors.black,
                                                    size: 13.w,
                                                  )
                                                ],
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: -20.h,
                                    right: 40.w,
                                    child: Container(
                                      height: 34.3.h,
                                      width: 39.88.w,
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  'assets/images/crown.png'))),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Category",
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.to(CategoryScreen());
                                },
                                child: Text(
                                  "See all",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.normal,
                                      color: const Color(0xff008280)),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          GridView.builder(
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: controller.categories!.length,
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2,
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10),
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5.h),
                                  child: Container(
                                    height: 150.h,
                                    width: 178.w,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: const Color(0xff41B9B8)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: 49.h,
                                          width: 55.w,
                                          decoration: BoxDecoration(
                                              color:
                                                  Colors.white.withOpacity(0.5),
                                              borderRadius:
                                                  BorderRadius.circular(4)),
                                          child: Center(
                                            child: ColorFiltered(
                                              child: Image.network(
                                                controller
                                                    .categories![index].image,
                                                scale: 3.sp,
                                              ),
                                              colorFilter: ColorFilter.mode(
                                                  Colors.white,
                                                  BlendMode.srcATop),
                                            ),
                                          ),
                                        ),
                                        SizedBox(height: 15.h),
                                        Text(
                                          controller.categories![index].name,
                                          style: TextStyle(
                                              fontSize: 19.sp,
                                              color: Colors.white),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          "12 Question",
                                          style: TextStyle(
                                              fontSize: 10.sp,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
