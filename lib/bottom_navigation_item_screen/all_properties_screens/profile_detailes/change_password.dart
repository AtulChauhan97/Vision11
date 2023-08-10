import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/profile_screen.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  bool visible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.maxFinite,
        width: double.maxFinite,
        child: Stack(
          //clipBehavior: Clip.none,
          children: [
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black,
                    Colors.red.shade900,
                  ])),
            ),
            buildPositioned()
          ],
        ),
      ),
    );
  }

  Positioned buildPositioned() {
    return Positioned(
          top: 80,
          right: 12,
          left: 12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: (){
                Get.back(result: const ProfileScreen());
              }, icon: const Icon(Icons.arrow_back,color: Colors.white,)),
              const SizedBox(height: 10,),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 2,
                          blurStyle: BlurStyle.normal,
                          color: Colors.grey,
                          spreadRadius: 0.5,
                          offset: Offset(00, 01))
                    ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "Change Password",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Don't worry,we are here to help you",
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Old Password',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    oldPasswordArea(),
                    Text(
                      'New Password',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    newPasswordArea(),
                    Text(
                      'Confirm Password',
                      style: TextStyle(color: Colors.grey.shade500),
                    ),
                    confirmPasswordArea(),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade800,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5))),
                        onPressed: () {},
                        child: const Text(
                          'Save Password',
                          style: TextStyle(color: Colors.white,fontSize: 18),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        );
  }

  Widget oldPasswordArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        obscureText: visible,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: "Old password",
            suffixIcon: IconButton(
              onPressed: () {
                visible = !visible;
                setState(() {});
              },
              icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
            ),
            hintStyle: TextStyle(color: Colors.grey.shade500),
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }

  Widget newPasswordArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        readOnly: false,
        obscureText: visible,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: "New password",
            suffixIcon: IconButton(
              onPressed: () {
                visible = !visible;
                setState(() {});
              },
              icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
            ),
            hintStyle: TextStyle(color: Colors.grey.shade500),
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }

  Widget confirmPasswordArea() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        readOnly: false,
        obscureText: visible,
        obscuringCharacter: "*",
        decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            hintText: "Confirm password",
            suffixIcon: IconButton(
              onPressed: () {
                visible = !visible;
                setState(() {});
              },
              icon: Icon(visible ? Icons.visibility_off : Icons.visibility),
            ),
            hintStyle: TextStyle(color: Colors.grey.shade500),
            fillColor: Colors.grey.shade200,
            filled: true,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none)),
      ),
    );
  }
}
