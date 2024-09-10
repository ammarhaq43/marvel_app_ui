import 'package:flutter/material.dart';
import 'package:marvel_app/main_screen.dart';
import 'package:marvel_app/splash_screen.dart';

void main(){
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: SplashScreen(),
   );
  }
}
