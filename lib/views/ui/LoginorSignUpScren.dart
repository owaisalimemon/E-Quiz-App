import 'package:e_quiz_app/views/ui/LoginScreen.dart';
import 'package:e_quiz_app/views/ui/SignupScreen.dart';
import 'package:e_quiz_app/views/ui/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginorSignUpScren extends StatelessWidget {
  const LoginorSignUpScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2CB4B3),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 122.h,
              right: 13.w,
              child: Container(
                height: 89.h,
                width: 89.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    opacity: 0.5,
                    image: AssetImage('assets/images/Group 57 1@2x.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: -30.h,
              left: -30.w,
              child: Container(
                height: 79.h,
                width: 79.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    opacity: 0.5,
                    image: AssetImage('assets/images/Group 58@2x.png'),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 383.h,
              left: -70.w,
              child: Container(
                height: 305.h,
                width: 153.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    opacity: 0.5,
                    image: AssetImage('assets/images/Group 59@2x.png'),
                  ),
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
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
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            Container(
                              height: 55.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            SizedBox(
                              height: 51.69.h,
                              width: 51.39.w,
                              child:
                                  Image.asset('assets/icons/Group 8 2@2x.png'),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Text(
                      "E-Quizer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                SizedBox(
                  width: 428.w,
                  height: 380.h,
                  child: Image.asset('assets/images/loginorsingup.png'),
                ),
                Container(
                  height: 400.h,
                  width: 394.w,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Login or Sign Up",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10.h),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35.w),
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(children: [
                                  TextSpan(
                                    text:
                                        'Login or Create an Account to Take part in ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text: 'Quiz . ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'Take part in ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  TextSpan(
                                    text: 'Challenges ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: '& More ',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20.sp,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ])),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          RoundedButton(
                            text: "Login",
                            onpress: () {
                              Get.to(LoginScreen());
                            },
                            height: 59.h,
                            width: 334.w,
                            backgroundcolor: Colors.white,
                            fontcolor: Color(0xFF2CB4B3),
                          ),
                          SizedBox(height: 10.h),
                          RoundedButton(
                            text: "Create Account",
                            onpress: () {
                              Get.to(SignupScreen());
                            },
                            height: 59.h,
                            width: 334.w,
                            backgroundcolor: Color(0xFF2CB4B3),
                            fontcolor: Colors.white,
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
