import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _secondScreenState();
}

class _secondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(
              'assets/images/second-screen.svg',
              height: 350,
              width: 350,
              allowDrawingOutsideViewBox: true,
            ),
            Column(
              children: [
                new DotsIndicator(
                  position: 1,
                  dotsCount: 3,
                  decorator: const DotsDecorator(
                      spacing: EdgeInsets.all(5.0),
                      activeColor: Color(0xff0560FA)),
                ),
                const Padding(padding: EdgeInsets.only(top: 100)),
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
                            textStyle: const TextStyle(
                          color: Color(0xff0560FA),
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                              side: const BorderSide(
                                  width: 1.0, color: Color(0xff0560FA))),
                          backgroundColor: Colors.white),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/thirdScreen');
                      },
                      child: Text(
                        'Next',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                      ),
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(5), // <-- Radius
                          ),
                          backgroundColor: const Color(0xff0560FA)),
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
