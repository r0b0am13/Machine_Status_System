import 'package:flutter/material.dart';
import 'package:vending_machine_status/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'screens/choose.dart';
import 'screens/status.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
      routes: {
        '/': (context) => Splash_Screen(),
        '/choose': (context) => Choose(),
        '/status': (context) => Status(),
      }
  ));
}

