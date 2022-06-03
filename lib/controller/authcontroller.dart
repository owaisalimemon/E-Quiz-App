import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_quiz_app/helper/validation.dart';
import 'package:e_quiz_app/models/usersmodel.dart';
import 'package:e_quiz_app/views/ui/getstartedscreen.dart';
import 'package:e_quiz_app/views/ui/homeScreen.dart';
import 'package:e_quiz_app/views/ui/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  TextEditingController loginemail = TextEditingController();
  TextEditingController loginpassword = TextEditingController();

  TextEditingController sinupusername = TextEditingController();
  TextEditingController signupemail = TextEditingController();
  TextEditingController signuppassword = TextEditingController();

  bool isLoading = false;

  bool signupisloading = false;

  UserModel? userModel;

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

    if (Validation().isEmail(loginemail.text) == false) {
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

    try {
      var signin = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: loginemail.text, password: loginpassword.text);

      isLoading = false;

      var userr = await FirebaseFirestore.instance
          .collection('users')
          .doc(signin.user!.uid)
          .get();

      userModel = UserModel.fromJson(userr.data());

      Get.to(HomeScreen());
    } catch (error) {
      isLoading = false;
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

    if (Validation().isEmail(signupemail.text) == false) {
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

    try {
      final User currentUser =
          (await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: signupemail.text,
        password: signuppassword.text,
      ))
              .user!;

      Map<String, dynamic> data = {
        'uid': currentUser.uid,
        'username': sinupusername.text,
        'email': signupemail.text,
        'fullname': sinupusername.text,
        'points': 0,
        'worldrank': 113,
        'socialrank': 10,
        'password': signuppassword.text,
        'phonono': '12345678',
        'image': 'assets/images/Group 13 black@2x.png'
      };

      await FirebaseFirestore.instance
          .collection('users')
          .doc(currentUser.uid)
          .set(data);

      signupisloading = false;

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
              Get.to(LoginScreen());
            },
          ),
        ],
      );
    } catch (error) {
      signupisloading = false;
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
