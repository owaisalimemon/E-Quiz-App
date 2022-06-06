import 'package:e_quiz_app/views/ui/GetStartedScreen.dart';

import 'package:e_quiz_app/views/ui/LevelPage.dart';
import 'package:e_quiz_app/views/ui/QuizScreen.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Home());
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      rebuildFactor: (old, data) => true,
      builder: (context, child) => GetMaterialApp(
        home: GetStartedScreen(),
        theme: ThemeData(fontFamily: 'Nexa'),
      ),
      designSize: const Size(428, 926),
    );
  }
}
