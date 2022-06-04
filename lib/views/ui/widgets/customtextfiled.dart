import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {required this.hinttext,
      required this.controller,
      required this.icon,
      required this.obsecuretext,
      required this.onPressed});

  String hinttext;
  TextEditingController controller;
  IconData icon;
  bool obsecuretext;
  Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obsecuretext,
        decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: IconButton(
            onPressed: () {
              onPressed();
            },
            icon: Icon(
              icon,
              color: Colors.black,
              size: 20.sp,
            ),
          ),
          contentPadding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
        ));
  }
}
