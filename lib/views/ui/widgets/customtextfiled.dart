import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextFiled extends StatelessWidget {
  CustomTextFiled(
      {required this.hinttext,
      required this.controller,
      required this.icon,
      required this.obsecuretext});

  String hinttext;
  TextEditingController controller;
  IconData icon;
  bool obsecuretext;

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obsecuretext,
        decoration: InputDecoration(
          hintText: hinttext,
          suffixIcon: Icon(
            icon,
            color: Colors.black,
            size: 20.w,
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
