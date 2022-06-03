import 'package:e_quiz_app/controller/authcontroller.dart';
import 'package:e_quiz_app/views/ui/signup.dart';
import 'package:e_quiz_app/views/ui/widgets/circlebutton.dart';
import 'package:e_quiz_app/views/ui/widgets/customtextfiled.dart';
import 'package:e_quiz_app/views/ui/widgets/socialmediabutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  final controller = Get.put(AuthController());
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: InkWell(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child: SizedBox(
              height: 890.h,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 39.w, right: 39.w, bottom: 195.h, top: 30.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: SizedBox(
                        width: 240.w,
                        height: 67.57.h,
                        child: Image.asset('assets/images/e-quizer text.png'),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey,",
                          style: TextStyle(
                              fontSize: 40.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Login Now",
                          style: TextStyle(
                              fontSize: 40.sp,
                              color: const Color(0xff008280),
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 10.h),
                        Row(
                          children: [
                            Text(
                              'If you are New Here / ',
                              style: TextStyle(
                                  color: const Color(0xff707070),
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.normal),
                            ),
                            GestureDetector(
                              onTap: () {
                                Get.to(SignupScreen());
                              },
                              child: Text(
                                'Create new',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        CustomTextFiled(
                          hinttext: "Email address",
                          controller: controller.loginemail,
                          icon: Icons.mail_outline_sharp,
                          obsecuretext: false,
                        ),
                        SizedBox(height: 10.h),
                        CustomTextFiled(
                          hinttext: "Password",
                          controller: controller.loginpassword,
                          icon: Icons.lock_outline_sharp,
                          obsecuretext: true,
                        ),
                        SizedBox(height: 5.h),
                        GestureDetector(
                          onTap: () {},
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "Forgot?",
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: const Color(0xff707070),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    controller.isLoading
                        ? const CircularProgressIndicator()
                        : Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Log in",
                                style: TextStyle(
                                    fontSize: 30.sp,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              CircleButton(onTap: () {
                                controller.emialsignin();
                              })
                            ],
                          ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialMediaButton(
                          image: 'assets/icons/google.png',
                          onTap: () {},
                        ),
                        SocialMediaButton(
                          image: 'assets/icons/apple.png',
                          onTap: () {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
