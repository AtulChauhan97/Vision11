import 'package:flutter/material.dart';
class FantasyPoint extends StatefulWidget {
  const FantasyPoint({Key? key}) : super(key: key);

  @override
  State<FantasyPoint> createState() => _FantasyPointState();
}

class _FantasyPointState extends State<FantasyPoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade700,
        title: Text('Fantasy Point',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}
