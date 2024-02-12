import 'package:flutter/material.dart';
import 'package:redi_express/auth/sign_up.dart';
import 'package:redi_express/welcome/first_screen.dart';
import 'package:redi_express/welcome/second_screen.dart';
import 'package:redi_express/welcome/splash.dart';
import 'package:redi_express/welcome/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/signUp',
      routes: {
        '/': (context) => const SplashScreen(),
        '/firstScreen': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/thirdScreen': (context) => const ThirdScreen(),
        '/signUp': (context) => const SignUp(),
      },
    );
  }
}
