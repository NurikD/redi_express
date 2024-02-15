import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      'Create an account',
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              color: Color(0xff3A3A3A),
                              fontWeight: FontWeight.bold)),
                    ),
                    Text('Complete the sign up process to get started',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                              color: Color(0xffA7A7A7),
                            ))),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
