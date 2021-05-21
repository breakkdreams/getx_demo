import 'package:flutter/material.dart';

class AppTheme {
  // 1.抽取相同的样式
  static const double _titleFontSize = 20;

  // 2.亮色主题
  static final ThemeData lightTheme = ThemeData(
      appBarTheme: AppBarTheme(
        brightness: Brightness.dark,
      ),
      primarySwatch: Colors.blue,
      primaryTextTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black)
      )
  );

  // 3.暗黑主题
  static final ThemeData darkTheme = ThemeData(
      appBarTheme: AppBarTheme(
        brightness: Brightness.light,
      ),
      primaryColor: Colors.grey,
      primaryTextTheme: TextTheme(
          headline1: TextStyle(
              color: Colors.white,
              fontSize: _titleFontSize
          )
      ),
      textTheme: TextTheme(
          headline1: TextStyle(color: Colors.white),
          bodyText1: TextStyle(color: Colors.white70)
      )
  );
}