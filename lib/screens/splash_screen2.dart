import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision11/screens/home_screen.dart';
class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),(){
      Get.offAll(const HomeScreen());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: height,
          width: width,
          child: Image.asset('assets/dhoni.png',fit: BoxFit.cover,)),
    );
  }
}
