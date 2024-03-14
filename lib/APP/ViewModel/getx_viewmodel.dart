import 'package:get/get.dart';
import 'package:testing_task/Common/AppBar/grid_view.dart';

class SelectCardController extends GetxController {
  final RxList<bool> isTappedList =
      List.generate(choices.length, (index) => false).obs;

  void handleTap(int index) {
    isTappedList[index] = true;
  }

  void handleTapCancel(int index) {
    isTappedList[index] = false;
  }
}
