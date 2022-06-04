import 'package:clipboard/clipboard.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

class ExtraController extends GetxController {
  copytoclipboard(String text) {
    FlutterClipboard.copy(text).then((value) {
      Get.snackbar(
        "Copied",
        "Code is copied to your clip board",
        icon: Icon(Icons.content_copy, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    });
  }
}
