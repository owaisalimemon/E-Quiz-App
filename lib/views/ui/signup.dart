import 'package:e_quiz_app/controller/authcontroller.dart';
import 'package:e_quiz_app/views/ui/login.dart';
import 'package:e_quiz_app/views/ui/widgets/circlebutton.dart';
import 'package:e_quiz_app/views/ui/widgets/customtextfiled.dart';
import 'package:e_quiz_app/views/ui/widgets/socialmediabutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SignupScreen extends StatelessWidget {
  final controller = Get.put(AuthController());
  SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: InkWell(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: Container(
            height: 926.h,
            child: Padding(
              padding: EdgeInsets.only(
                  left: 39.w, right: 39.w, bottom: 195.h, top: 30.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      width: 240.w,
                      height: 67.57.h,
                      child: Image.asset('assets/images/e-quizer text.png'),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Create Account",
                        style: TextStyle(
                            fontSize: 40.w,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Start Learning",
                        style: TextStyle(
                            fontSize: 40.w,
                            color: Color(0xff008280),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Text('If you have Account / ',
                              style: TextStyle(
                                  color: Color(0xff707070),
                                  fontSize: 18.w,
                                  fontWeight: FontWeight.normal)),
                          GestureDetector(
                            onTap: () {
                              Get.to(LoginScreen());
                            },
                            child: Text('Log in',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.w,
                                    fontWeight: FontWeight.normal)),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      CustomTextFiled(
                        hinttext: "Username",
                        controller: controller.sinupusername,
                        icon: Icons.person_outline_outlined,
                        obsecuretext: false,
                      ),
                      SizedBox(height: 10.h),
                      CustomTextFiled(
                        hinttext: "Email address",
                        controller: controller.signupemail,
                        icon: Icons.mail_outline_sharp,
                        obsecuretext: false,
                      ),
                      SizedBox(height: 10.h),
                      CustomTextFiled(
                        hinttext: "Password",
                        controller: controller.signuppassword,
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
                                fontSize: 12.w, color: Color(0xff707070)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  controller.signupisloading
                      ? CircularProgressIndicator()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 30.w,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            CircleButton(onTap: () {
                              controller.emialsignuip();
                            })
                          ],
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SocialMediaButton(
                          image: 'assets/icons/google.png', onTap: () {}),
                      SocialMediaButton(
                          image: 'assets/icons/apple.png', onTap: () {}),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
