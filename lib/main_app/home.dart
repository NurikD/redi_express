import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class mainHome extends StatefulWidget {
  const mainHome({super.key});

  @override
  State<mainHome> createState() => _mainHomeState();
}

class _mainHomeState extends State<mainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: const Color(0xffCFCFCF),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search services',
                    border: InputBorder.none,
                    suffixIcon: Icon(Icons.search_rounded, color: Color(0xffA7A7A7)),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 100.0,
                      decoration: const BoxDecoration(
                        color: Color(0xff0560FA),
                      ),
                      child: null,
                    ),
                    Positioned(
                      left: -25.0,
                      top: 40.0,
                      child: Container(
                        width: 122.0,
                        height: 122.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff005ECE),
                        ),
                      ),
                    ),
                    Positioned(
                      right: -25.0,
                      top: -50.0,
                      child: Container(
                        width: 122.0,
                        height: 122.0,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff005ECE),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 15.0,
                      top: 20.0,
                        child: Text('Hello Ken', style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                        ),)
                    ),
                    Positioned(
                        left: 15.0,
                        top: 55.0,
                        child: Text('We trust you are having a great time', style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                          fontWeight: FontWeight.w300
                        ),)
                    ),
                    Positioned(
                      right: 10.0,
                      top: 20,
                      child: IconButton(
                        onPressed: (){},
                        icon: const Icon(Icons.notifications_none, color: Colors.white, size: 35,),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
               Row(
                children: [
                  Text('Special for you', style: TextStyle(
                      color: Color(0xffEC8000),
                      fontSize: 14,
                      fontWeight: FontWeight.bold
                  ),),
                  IconButton(
                      onPressed: (){},
                      icon: SvgPicture.asset('assets/icons/arrow-square-right.svg')
                  )
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
