import 'package:animation_bmi/screens/home_page.dart';
import 'package:animation_bmi/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
      ),
      routes: {
        '/' : (context) => const splash_screen(),
        'home_page' : (context) => const home_page(),
      },
    ),
  );
}
