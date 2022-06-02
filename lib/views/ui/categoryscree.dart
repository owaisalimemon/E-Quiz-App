import 'package:e_quiz_app/controller/datacontroller.dart';
import 'package:e_quiz_app/views/ui/widgets/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
  var controller = Get.put(DataController());
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
              color: Color(0xff008280),
              size: 26.61.w,
            )),
        centerTitle: true,
        title: Text(
          'Chose Category',
          style: TextStyle(
              fontSize: 35.w,
              color: Color(0xff008280),
              fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
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
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    shrinkWrap: true,
                    itemCount: controller.liveclasses.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Obx(() {
                        return GestureDetector(
                          onTap: () {
                            controller.selectindex(index);
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
                                      ? Color(0xff41B9B8)
                                      : Color(0xff96DAD9)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 65.h,
                                    width: 67.w,
                                    decoration: BoxDecoration(
                                        color: Color(0xffABE1E1),
                                        borderRadius: BorderRadius.circular(4)),
                                    child: Center(
                                      child: Icon(
                                        Icons.science_outlined,
                                        color: controller.selectedindex == index
                                            ? Colors.white
                                            : Colors.black,
                                        size: 49.w,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Text(
                                    controller.liveclasses[index].subtitle,
                                    style: TextStyle(
                                        fontSize: 19.w,
                                        color: controller.selectedindex == index
                                            ? Colors.white
                                            : Colors.black),
                                  ),
                                  SizedBox(height: 5.h),
                                  Text(
                                    controller.liveclasses[index].questionsno
                                            .toString() +
                                        " Question",
                                    style: TextStyle(
                                        fontSize: 10.w,
                                        color: controller.selectedindex == index
                                            ? Colors.white
                                            : Colors.black),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
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
    );
  }
}