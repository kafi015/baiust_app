import 'package:baiust/ui/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      Get.to(HomeScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            baiustLogo,
            scale: 1,
          ),
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Bangladesh Army International University of Science and Technology',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const Spacer(),
          CircularProgressIndicator(
            color: primaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          Text('Version 1.0.0', style: Theme.of(context).textTheme.titleSmall),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
