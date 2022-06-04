import 'package:e_quiz_app/views/ui/LoginorSignUpScren.dart';
import 'package:e_quiz_app/views/ui/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Center(
                  child: SizedBox(
                    height: 59.h,
                    width: 59.w,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Image.asset('assets/icons/Rectangle 8@2x.png'),
                        SizedBox(
                          height: 55.h,
                          child: Image.asset('assets/icons/Rectangle 9@2x.png'),
                        ),
                        SizedBox(
                          height: 51.69.h,
                          width: 51.39.w,
                          child: Image.asset('assets/icons/Group 8@2x.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  "E-Quizer",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 428.w,
              height: 323.09,
              child: Image.asset('assets/images/getstartedimage.png'),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Grab Your Friends!",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 56.w),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(children: [
                      TextSpan(
                        text: 'Invite your friends to the ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: 'Battles ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'of ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: 'wits .',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'The ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.normal),
                      ),
                      TextSpan(
                        text: 'Smartest ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: 'wins!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 22.w,
                            fontWeight: FontWeight.normal),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
            RoundedButton(
              text: "Start",
              onpress: () {
                Get.to(
                  const LoginorSignUpScren(),
                );
              },
              width: 251.w,
              height: 72.h,
              backgroundcolor: const Color(0xFF2CB4B3),
              fontcolor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
