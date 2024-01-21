import 'package:flutter/material.dart';
import 'package:vending_machine_status/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    home: Splash_Screen(),
    debugShowCheckedModeBanner: false,
  ));
}
