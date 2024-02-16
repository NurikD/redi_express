import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SvgPicture.asset(
                  'assets/images/first-screen.svg',
                  height: 350,
                  width: 350,
                  allowDrawingOutsideViewBox: true,
                ),
                Column(
                  children: [
                    new DotsIndicator(
                      position: 0,
                      dotsCount: 3,
                      decorator: DotsDecorator(
                          spacing: const EdgeInsets.all(5.0),
                          activeColor: Color(0xff0560FA)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 100)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/thirdScreen');
                          },
                          child: Text(
                            'Skip',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Color(0xff0560FA),
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                  side: BorderSide(
                                      width: 1.0, color: Color(0xff0560FA))),
                              backgroundColor: Colors.white),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/secondScreen');
                          },
                          child: Text(
                            'Next',
                            style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                )),
                          ),
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5), // <-- Radius
                              ),
                              backgroundColor: Color(0xff0560FA)),
                        ),
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
