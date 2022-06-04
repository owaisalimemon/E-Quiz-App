import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProfileInfoDesign extends StatelessWidget {
  ProfileInfoDesign(
      {required this.icon,
      required this.title,
      required this.pointsorrank,
      required this.hash});

  String title;
  int pointsorrank;
  IconData icon;
  bool hash;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 40.w,
        ),
        SizedBox(height: 5.h),
        Text(
          title,
          style: TextStyle(fontSize: 15.sp, color: Colors.white),
        ),
        SizedBox(height: 5.h),
        Text(
          hash ? '#' + pointsorrank.toString() : '' + pointsorrank.toString(),
          style: TextStyle(
              fontSize: 15.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
