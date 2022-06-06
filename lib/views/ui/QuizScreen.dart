import 'package:e_quiz_app/controller/QuizController.dart';
import 'package:e_quiz_app/views/ui/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class QuizScreen extends StatelessWidget {
  QuizScreen({Key? key}) : super(key: key);

  var controller = Get.put(QuizController(), permanent: true);

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
        title: CircularStepProgressIndicator(
          totalSteps: 3,
          currentStep: 1,
          stepSize: 3,
          selectedColor: Color(0xff008280),
          unselectedColor: Colors.white,
          width: 41.w,
          height: 41.h,
          selectedStepSize: 3,
          child: CircleAvatar(
            backgroundColor: Color(0xffE0F4F4),
            child: Center(
              child: Text(
                '01',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Color(0xff2CB4B3),
                ),
              ),
            ),
          ),
          // roundedCap: (_, __) => true,
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(top: 15.h, bottom: 15.h, right: 5.w),
              child: Container(
                height: 26.h,
                width: 55.w,
                decoration: BoxDecoration(
                  color: Color(0xffE0F4F4),
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Center(
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Color(0xff2CB4B3),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 50.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(
              child: Container(
                height: 212.h,
                width: 388.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/getstartedimage.png'),
                  ),
                ),
              ),
            ),
            Container(
              height: 400.h,
              child: PageView.builder(
                  itemCount: 3,
                  controller: controller.pageController,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context, Position) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Question ${Position.toString()} of 3 ',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  color: const Color(0xff2CB4B3)),
                            ),
                            // Text(
                            //   Position == 2
                            //       ? controller.answers.toString()
                            //       : 'aaa',
                            //   style: TextStyle(
                            //       fontSize: 20.sp,
                            //       color: const Color(0xff2CB4B3)),
                            // ),
                            SizedBox(
                              width: 300.w,
                              child: Text(
                                'The value of 1-Degree in Radian is',
                                style: TextStyle(
                                    fontSize: 25.sp, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        GetBuilder<QuizController>(builder: ((controller) {
                          return ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.checking(index);
                                  controller.update();
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 10.h),
                                  child: Container(
                                    height: 70.h,
                                    width: 386.w,
                                    decoration: BoxDecoration(
                                        color: controller.check != -1
                                            ? controller.answer == index + 1
                                                ? Colors.white
                                                : Colors.white
                                            : Color(0xffE0F4F4),
                                        borderRadius: BorderRadius.circular(15),
                                        border: Border.all(
                                            color: controller.check != -1
                                                ? controller.answer == index + 1
                                                    ? Color(0xFF2CB4B3)
                                                    : Colors.red
                                                : Colors.white,
                                            width: 3)),
                                    child: Center(
                                      child: Text(
                                        'π/180',
                                        style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Colors.black),
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        })),
                      ],
                    );
                  })),
            ),
            Center(
              child: RoundedButton(
                text: "NEXT",
                onpress: () {
                  controller.pagechange();
                },
                height: 56.h,
                width: 146.w,
                backgroundcolor: Color(0xffE0F4F4),
                fontcolor: Color(0xFF2CB4B3),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
