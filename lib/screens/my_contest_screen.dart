import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
class MyContest extends StatefulWidget {
  const MyContest({Key? key}) : super(key: key);

  @override
  State<MyContest> createState() => _MyContestState();
}

class _MyContestState extends State<MyContest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.black,),
        backgroundColor: Colors.red.shade600,
      ),

    );
  }
}
