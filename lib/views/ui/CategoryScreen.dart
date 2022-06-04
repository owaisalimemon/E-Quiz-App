import 'package:e_quiz_app/controller/DataController.dart';
import 'package:e_quiz_app/views/ui/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class CategoryScreen extends StatelessWidget {
  var controller = Get.put(permanent: true, DataController());
  CategoryScreen({Key? key}) : super(key: key);

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
          'Chose Category',
          style: TextStyle(
              fontSize: 35.sp,
              color: const Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.only(top: 25.h),
          child: Center(
            child: Container(
              width: 386.w,
              decoration: BoxDecoration(
                  color: Color(0xffABE1E1).withOpacity(0.71),
                  borderRadius: BorderRadius.circular(26)),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 15.h),
                child: Column(
                  children: [
                    GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10),
                      shrinkWrap: true,
                      itemCount: controller.categories!.length,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return GetBuilder<DataController>(
                          builder: (controller) {
                            return GestureDetector(
                              onTap: () {
                                controller.selectindex(index);
                                controller.update();
                              },
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                child: Container(
                                  height: 150.h,
                                  width: 178.w,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: controller.selectedindex == index
                                          ? const Color(0xff41B9B8)
                                          : const Color(0xff96DAD9)),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 65.h,
                                        width: 67.w,
                                        decoration: BoxDecoration(
                                            color: const Color(0xffABE1E1),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Center(
                                          child: Center(
                                            child: ColorFiltered(
                                              child: Image.network(
                                                controller
                                                    .categories![index].image,
                                                scale: 2.5.sp,
                                              ),
                                              colorFilter: ColorFilter.mode(
                                                  controller.selectedindex ==
                                                          index
                                                      ? Colors.white
                                                      : Colors.black,
                                                  BlendMode.srcATop),
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 15.h),
                                      Text(
                                        controller.categories![index].name,
                                        style: TextStyle(
                                            fontSize: 19.sp,
                                            color: controller.selectedindex ==
                                                    index
                                                ? Colors.white
                                                : Colors.black),
                                      ),
                                      SizedBox(height: 5.h),
                                      Text(
                                        "12 Question",
                                        style: TextStyle(
                                            fontSize: 10.sp,
                                            color: controller.selectedindex ==
                                                    index
                                                ? Colors.white
                                                : Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                    SizedBox(height: 50.h),
                    RoundedButton(
                      text: "NEXT",
                      onpress: () {
                        // Get.to();
                      },
                      height: 59.h,
                      width: 334.w,
                      backgroundcolor: Colors.white,
                      fontcolor: Color(0xFF2CB4B3),
                    ),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
