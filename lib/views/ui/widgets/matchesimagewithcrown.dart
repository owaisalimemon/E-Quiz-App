import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageWithCrown extends StatelessWidget {
  ImageWithCrown({required this.image, required this.crown});

  String image;
  bool crown;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 62.28.h,
          width: 62.28.w,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(image))),
        ),
        crown
            ? Positioned(
                top: -20.h,
                child: Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/crown.png'))),
                ),
              )
            : SizedBox(),
      ],
    );
  }
}
