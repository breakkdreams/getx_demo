import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/pages/home/view.dart';
import 'package:getx_demo/pages/personal/view.dart';

class MainState {
  late List<Widget> pageList;
  late RxInt selectedIndex;
  late RxString title;

  MainState() {
    pageList = [
      HomePage(),
      PersonalPage()
    ];
    selectedIndex = 0.obs;
    title = '首页'.obs;
  }
}
