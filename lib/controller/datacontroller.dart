import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_quiz_app/models/CategoryModel.dart';
import 'package:e_quiz_app/models/datamodel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DataController extends GetxController {
  DataController() {
    selectedindex = -1;

    getcategories();
  }

  var streamcategory =
      FirebaseFirestore.instance.collection('category').snapshots();
  var streamcategory2 =
      FirebaseFirestore.instance.collection('category').snapshots();
  int selectedindex = 0;

  QuerySnapshot? querySnapshot;

  List<CategoryModel>? categories;

  selectindex(index) {
    selectedindex = index;
  }

  List<Liveclass> liveclasses = [
    Liveclass(
        image: '',
        title: "Statistics Math Quiz",
        subtitle: 'Mathematics',
        questionsno: 12),
    Liveclass(
        image: '',
        title: "Integers Quiz",
        subtitle: 'Mathematics',
        questionsno: 8),
    Liveclass(
        image: '', title: "Science Quiz", subtitle: 'Science', questionsno: 8),
    Liveclass(
        image: '', title: "Music Quiz", subtitle: 'Music', questionsno: 8),
  ];

  Future<void> getcategories() async {
    categories = await getdata();
  }

  Future<List<CategoryModel>> getdata() async {
    querySnapshot =
        await FirebaseFirestore.instance.collection('category').get();

    return querySnapshot!.docs
        .map((e) => CategoryModel.fromJson(e.data()))
        .toList();
  }
}
