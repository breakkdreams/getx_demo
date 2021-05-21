import 'package:dio/dio.dart';
import 'http_manager.dart';

/// 登录
Future login(String username, String password) {
  var formData = FormData.fromMap({
    'username': username,
    'password': password,
  });
  return HttpManager.instance.dio.post("user/login", data: formData);
}
