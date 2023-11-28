import 'package:baiust/ui/screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Montserrat',
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 30,fontFamily: 'Montserrat_Bold'),
          titleMedium: TextStyle(fontSize: 25,fontFamily: 'Montserrat_Bold'),
          titleSmall: TextStyle(fontSize: 18,fontFamily: 'Montserrat_Bold'),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
        useMaterial3: true,
      ),
      home: const BAIUST(),
    );
  }
}

class BAIUST extends StatelessWidget {
  const BAIUST({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
