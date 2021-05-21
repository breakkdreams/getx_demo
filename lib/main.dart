import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/app_theme.dart';
import 'package:getx_demo/utils/route_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      initialRoute: RouteConfig.main,
      getPages: RouteConfig.getPages,
      builder: _builder,
    );
  }
}

///独立处理全局
Widget _builder(BuildContext context, Widget? child) {
  return FlutterSmartDialog(child: child);
}
