import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PositionHolderDesign extends StatelessWidget {
  PositionHolderDesign(
      {required this.image,
      required this.name,
      required this.points,
      required this.first});

  String image;
  String name;
  int points;
  bool first;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 62.28.h,
              width: 62.28.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(image))),
            ),
            first
                ? Positioned(
                    top: -25.h,
                    child: Container(
                      height: 34.3.h,
                      width: 39.88.w,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/crown.png'))),
                    ),
                  )
                : SizedBox(),
          ],
        ),
        Text(
          name,
          style: TextStyle(fontSize: 15.w, color: Colors.black),
        ),
        Positioned(
          child: Container(
            height: 22.h,
            width: 70.w,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xff2CB4B3)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  points.toString(),
                  style: TextStyle(fontSize: 15.w, color: Colors.white),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 20.w,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
