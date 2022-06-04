import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_quiz_app/models/CategoryModel.dart';
import 'package:e_quiz_app/models/SubCategoryModel.dart';
import 'package:e_quiz_app/models/UserModel.dart';

import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DataController extends GetxController {
  DataController() {
    selectedindex = -1;

    // getcategories();
    // getusers();
    // getsubcategory();
  }

  QuerySnapshot? querySnapshotuser;

  List<UserModel>? users;

  var streamcategory =
      FirebaseFirestore.instance.collection('category').snapshots();
  var streamcategory2 =
      FirebaseFirestore.instance.collection('category').snapshots();
  int selectedindex = 0;

  QuerySnapshot? querySnapshot;

  List<CategoryModel>? categories;

  QuerySnapshot? querySnapshotsubcategory;

  List<SubCategoryModel>? subcategory;

  selectindex(index) {
    selectedindex = index;
  }

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

  Future<void> getusers() async {
    users = await getusersdata();
  }

  Future<List<UserModel>> getusersdata() async {
    querySnapshotuser = await FirebaseFirestore.instance
        .collection('users')
        .orderBy('points', descending: true)
        .get();

    return querySnapshotuser!.docs
        .map((e) => UserModel.fromJson(e.data()))
        .toList();
  }

  Future<void> getsubcategory() async {
    subcategory = await getsubcategorydata();
  }

  Future<List<SubCategoryModel>> getsubcategorydata() async {
    querySnapshotsubcategory =
        await FirebaseFirestore.instance.collection('subcategory').get();

    return querySnapshotsubcategory!.docs
        .map((e) => SubCategoryModel.fromJson(e.data()))
        .toList();
  }

  String findcategoryofsubcat(index) {
    for (int i = 0; i < categories!.length; i++) {
      if (subcategory![index].categoryid == categories![i].cid) {
        return categories![i].name;
      }
    }

    return '';
  }

  String findcategoryofsubcatimage(index) {
    for (int i = 0; i < categories!.length; i++) {
      if (subcategory![index].categoryid == categories![i].cid) {
        return categories![i].image;
      }
    }

    return '';
  }
}
