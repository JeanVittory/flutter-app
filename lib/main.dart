import 'package:flutter/material.dart';
import 'package:flutterapp/screens/main_screen.dart';
//import 'package:flutterapp/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: ThemeData(
        primaryColor: const Color(0xFF5F5FFF),
        secondaryHeaderColor: const Color(0xFF030047),
        highlightColor: const Color(0XFFB7B7D2),
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF030047),
          ),
          headline2: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xff5f5fff)
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Colors.white
          ),
          headline4: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            color: Color(0xFF030047) 
          ),
          bodyText1: TextStyle(
            fontSize: 20.0,
            color: Color(0xFFB7B7D2)
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            color: Color(0xFF5F5FFF),
            fontWeight: FontWeight.w600
          ),
          subtitle1: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
            color: Color(0XFFB7B7D2)
          )
        )
      )
    );
  }
}
