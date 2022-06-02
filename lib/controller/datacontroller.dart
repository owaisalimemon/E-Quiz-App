import 'package:e_quiz_app/models/datamodel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class DataController extends GetxController {
  DataController() {
    selectedindex.value = -1;
  }
  RxInt selectedindex = 0.obs;

  selectindex(index) {
    selectedindex.value = index;
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
}
