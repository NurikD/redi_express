import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_express/welcome/first_screen.dart';
import 'package:redi_express/auth/sign_up.dart';

class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _thirdScreenState();
}

class _thirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/images/third-screen.svg',
              height: 350,
              width: 350,
              allowDrawingOutsideViewBox: true,
            ),
            Column(
              children: [
                new DotsIndicator(
                  position: 2,
                  dotsCount: 3,
                  decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(5.0),
                      activeColor: Color(0xff0560FA)),
                ),
                Padding(padding: EdgeInsets.only(top: 100)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.all(15),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                              MaterialPageRoute(
                                  builder: (context) => SignUp()));
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          backgroundColor: Color(0xff0560FA),
                            minimumSize: Size(150, 60)
                        ),
                      ),
                    )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account? ',
                      style: GoogleFonts.roboto(),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(MaterialPageRoute(
                            builder: (context) => SignUp()));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: Color(0xff0560FA)),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )),
      ),
    );
  }
}
