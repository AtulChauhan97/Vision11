import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision11/screens/splash_screen2.dart';
class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {

  @override
  void initState() {
    Future.delayed(const Duration(seconds: 1),(){
      Get.offAll(const SplashScreen2());
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Image.asset('assets/Vision11.png',fit: BoxFit.fill,height: 100,width: 100,),
      ),
    );
  }
}
