import 'package:flutter/material.dart';
import 'package:vending_machine_status/screens/splash_screen.dart';

void main() {
  runApp(Machine_Status_App());
}

class Machine_Status_App extends StatefulWidget {
  const Machine_Status_App({super.key});

  @override
  State<Machine_Status_App> createState() => _Machine_Status_AppState();
}

class _Machine_Status_AppState extends State<Machine_Status_App> {
  @override
  Widget build(BuildContext context) {
    return Splash_Screen();
  }
}
