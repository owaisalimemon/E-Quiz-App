import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_quiz_app/controller/DataController.dart';

import 'package:e_quiz_app/helper/validation.dart';
import 'package:e_quiz_app/models/UserModel.dart';

import 'package:e_quiz_app/views/ui/GetStartedScreen.dart';
import 'package:e_quiz_app/views/ui/HomeScreen.dart';
import 'package:e_quiz_app/views/ui/LoginScreen.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AuthController extends GetxController {
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpassword = TextEditingController();

  TextEditingController sinupusername = TextEditingController();
  TextEditingController signupemail = TextEditingController();
  TextEditingController signuppassword = TextEditingController();

  bool isLoading = false;

  bool signupisloading = false;

  UserModel? userModel;

  bool showloginpassword = false;
  bool showsignuppassword = false;
  IconData loginiconshow = Icons.lock_outline_sharp;
  IconData signupiconshow = Icons.lock_outline_sharp;

  String? version;

  loginpasswordshow() {
    if (showloginpassword == true) {
      loginiconshow = Icons.lock_open_outlined;
    } else {
      loginiconshow = Icons.lock_outline;
    }
    showloginpassword = !showloginpassword;
  }

  signupshowpassword() {
    if (showsignuppassword == true) {
      signupiconshow = Icons.lock_open_outlined;
    } else {
      signupiconshow = Icons.lock_outline;
    }
    showsignuppassword = !showsignuppassword;
  }

  Future emialsignin() async {
    if (loginemail.text.isEmpty) {
      Get.snackbar(
        "Email field is empty",
        "Email field is empty",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (loginpassword.text.isEmpty) {
      Get.snackbar(
        "Password field is empty",
        "Password field is empty",
        icon: Icon(Icons.lock, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (Validation().isEmail(loginemail.text.trim()) == false) {
      Get.snackbar(
        "Email is not valid",
        "Email is not valid",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    print('done hogaya validate');

    isLoading = true;
    update();

    try {
      var signin = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginemail.text.trim(), password: loginpassword.text);

      isLoading = false;

      var userr = await FirebaseFirestore.instance
          .collection('users')
          .doc(signin.user!.uid)
          .get();

      userModel = UserModel.fromJson(userr.data());

      var dataget = Get.put(DataController());

      await dataget.getusers();
      await dataget.getcategories();
      await dataget.getsubcategory();

      isLoading = false;
      update();

      Get.to(() => HomeScreen());
    } catch (error) {
      isLoading = false;
      update();
      return Get.defaultDialog(
        title: "Result",
        content: Text(
          error.toString(),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      );
    }
  }

  Future emialsignuip() async {
    if (sinupusername.text.isEmpty) {
      Get.snackbar(
        "User Name field is Empty",
        "User Name field is Empty",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (signupemail.text.isEmpty) {
      Get.snackbar(
        "Email field is Empty",
        "Email field is Empty",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }
    if (signuppassword.text.isEmpty) {
      Get.snackbar(
        "Password field is Empty",
        "Password field is Empty",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (Validation().isEmail(signupemail.text.trim()) == false) {
      Get.snackbar(
        "Email is not valid",
        "Email is not valid",
        icon: Icon(Icons.mail, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    print('done hogaya validate');
    signupisloading = true;
    update();

    try {
      final User currentUser =
          (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signupemail.text.trim(),
        password: signuppassword.text,
      ))
              .user!;

      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      version = packageInfo.version;

      Map<String, dynamic> data = {
        'uid': currentUser.uid,
        'username': sinupusername.text,
        'email': signupemail.text.trim(),
        'fullname': sinupusername.text,
        'points': 0,
        'worldrank': 113,
        'socialrank': 10,
        'password': signuppassword.text,
        'phonono': '12345678',
        'image': 'assets/images/Group 13 black@2x.png',
        'createdat': DateTime.now(),
        'updatedat': DateTime.now(),
        'buildnumber': version
      };

      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .set(data);

      var userr = await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .get();

      userModel = UserModel.fromJson(userr.data());

      var dataget = Get.put(DataController());

      await dataget.getusers();
      await dataget.getcategories();
      await dataget.getsubcategory();

      signupisloading = false;
      update();

      Get.defaultDialog(
        title: "Sign up Done",
        content: Text(
          "You have Signed up Succefully",
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Get.to(HomeScreen());
            },
          ),
        ],
      );
    } catch (error) {
      signupisloading = false;
      update();
      return Get.defaultDialog(
        title: "Result",
        content: Text(
          error.toString(),
          textAlign: TextAlign.center,
        ),
        actions: [
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              Get.back();
            },
          ),
        ],
      );
    }
  }
}
