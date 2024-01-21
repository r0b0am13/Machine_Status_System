import 'dart:async';

import 'package:flutter/material.dart';


class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
  @override

  void initState() {
  
  Future.delayed(Duration(seconds: 4), () {
    Navigator.pushReplacementNamed(context, '/choose');
    }
  );
    super.initState();
}

  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("data", textAlign: TextAlign.center,),
    );
  }
}


