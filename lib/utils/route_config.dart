import 'package:get/get.dart';
import 'package:getx_demo/pages/home/view.dart';
import 'package:getx_demo/pages/main/view.dart';
import 'package:getx_demo/pages/personal/view.dart';
import 'package:getx_demo/pages/splash.dart';

class RouteConfig{
  ///启动图
  static final String splash = "/";
  ///主页面
  static final String main = "/main";
  ///首页
  static final String home = "/home";
  ///个人中心
  static final String personal = "/personal";


  ///别名映射页面
  static final List<GetPage> getPages = [
    GetPage(name: splash, page: () => SplashPage()),
    GetPage(name: main, page: () => MainPage()),
    GetPage(name: home, page: () => HomePage()),
    GetPage(name: personal, page: () => PersonalPage()),
  ];
}