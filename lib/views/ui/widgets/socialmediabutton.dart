import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SocialMediaButton extends StatelessWidget {
  SocialMediaButton({required this.image, required this.onTap});

  String image;
  Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(height: 45.h, width: 81.w, child: Image.asset(image)),
    );
  }
}
