import 'package:get/get.dart';
import 'package:testing_task/Common/widgets/grid_view.dart';

class SelectCardController extends GetxController {
  final RxList<bool> isTappedList =
      List.generate(choices.length, (index) => false).obs;

  void handleTap(int index) {
    isTappedList[index] = true;
  }

  void handleTapCancel(int index) {
    isTappedList[index] = false;
  }

  // RxBool isGrey = false.obs;

  // void changeTextColorAndWeight(bool isGreyText) {
  //   isGrey.value = isGreyText;
  // }

  // void changesecondTextColorAndWeight(bool isGreyText) {
  //   isGrey.value = isGreyText;
  // }
  RxBool isGreyNearYou = false.obs;
  RxBool isGreySearch = false.obs;

  void changeTextColorAndWeight(bool isNearYouSelected) {
    isGreyNearYou.value = isNearYouSelected;
    isGreySearch.value = !isNearYouSelected;
  }

  RxInt selectedStars = 0.obs;
  RxDouble startval1 = 20.0.obs;
  RxDouble endval1 = 70.0.obs;

  void setRangeValues(double start, double end) {
    startval1.value = start;
    endval1.value = end;
    update();
  }

  Rx<Gender> selectedGender = Gender.male.obs;

  void selectGender(Gender gender) {
    selectedGender.value = gender;
  }
}

enum Gender { male, female }
