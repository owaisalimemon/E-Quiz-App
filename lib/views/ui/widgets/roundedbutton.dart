import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {Key? key,
      required this.text,
      required this.onpress,
      required this.height,
      required this.width,
      required this.backgroundcolor,
      required this.fontcolor});

  String text;
  Function() onpress;
  double height;
  double width;
  Color backgroundcolor;
  Color fontcolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onpress();
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
            color: backgroundcolor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFF2CB4B3), width: 2)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: fontcolor, fontSize: 30.w, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
