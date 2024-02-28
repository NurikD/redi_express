import 'package:flutter/material.dart';
import 'package:redi_express/auth/otp_verification.dart';
import 'package:redi_express/auth/sign_up.dart';
import 'package:redi_express/welcome/first_screen.dart';
import 'package:redi_express/welcome/second_screen.dart';
import 'package:redi_express/welcome/splash.dart';
import 'package:redi_express/welcome/third_screen.dart';
import 'package:redi_express/auth/log_in.dart';
import 'package:redi_express/auth/forgot_password.dart';
import 'package:redi_express/auth/new_password.dart';
import 'package:redi_express/main_app/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/firstScreen': (context) => const FirstScreen(),
        '/secondScreen': (context) => const SecondScreen(),
        '/thirdScreen': (context) => const ThirdScreen(),
        '/signUp': (context) => const SignUp(),
        '/logIn': (context) => const LogIn(),
        '/forgotPass': (context) => const ForgotPass(),
        '/emailVerification': (context) => const EmailVerification(),
        '/newPass': (context) => const NewPass(),
        '/home': (context) => const mainHome(),
      },
    );
  }
}
