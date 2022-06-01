import 'package:e_quiz_app/views/ui/login.dart';
import 'package:e_quiz_app/views/ui/signup.dart';
import 'package:e_quiz_app/views/ui/widgets/roundedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginorSignUpScren extends StatelessWidget {
  const LoginorSignUpScren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2CB4B3),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              Center(
                child: Container(
                  height: 59.h,
                  width: 59.w,
                  child: Stack(
                    alignment: Alignment.topCenter,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      Container(
                          height: 51.69.h,
                          width: 51.39.w,
                          child: Image.asset('assets/icons/Group 8 2@2x.png')),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "E-Quizer",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.w,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Container(
            width: 428.w,
            height: 404.17.h,
            child: Image.asset('assets/images/loginorsingup.png'),
          ),
          Container(
            height: 400.h,
            width: 394.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
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
                          fontSize: 30.w,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h),
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
                                    fontSize: 20.w,
                                    fontWeight: FontWeight.normal)),
                            TextSpan(
                                text: 'Quiz . ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.w,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'Take part in ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.w,
                                    fontWeight: FontWeight.normal)),
                            TextSpan(
                                text: 'Challenges ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.w,
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: '& More ',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.w,
                                    fontWeight: FontWeight.normal)),
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
                    SizedBox(height: 20.h),
                    RoundedButton(
                      text: "Create Account",
                      onpress: () {
                        Get.to(SignupScreen());
                      },
                      height: 59.h,
                      width: 334.w,
                      backgroundcolor: Color(0xFF2CB4B3),
                      fontcolor: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
