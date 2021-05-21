import 'package:get/get.dart';

import 'state.dart';

class MainLogic extends GetxController {
  final state = MainState();


  ///切换tab
  void switchTap(int index) {
    state.selectedIndex = index.obs;
    switch (index) {
      case 0:
        state.title = "首页".obs;
        break;
      case 1:
        state.title = "个人中心".obs;
        break;
      default:
        state.title = "首页".obs;
    }
  }


}
