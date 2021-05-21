import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/base_scaffold.dart';

import 'logic.dart';
import 'state.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final MainLogic logic = Get.put(MainLogic());
  final MainState state = Get.find<MainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: AppBar(
        title: Obx(() => Text(state.title.value)),
      ),
      backgroundColor: Colors.white,
      body:state.pageList[state.selectedIndex.value],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          logic.switchTap(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Personal',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    Get.delete<MainLogic>();
    super.dispose();
  }
}