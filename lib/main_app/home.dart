import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
                  suffixIcon:
                      Icon(Icons.search_rounded, color: Color(0xffA7A7A7)),
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
                      child: Text(
                        'Hello Ken',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      )),
                  Positioned(
                      left: 15.0,
                      top: 55.0,
                      child: Text(
                        'We trust you are having a great time',
                        style: GoogleFonts.roboto(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w300),
                      )),
                  Positioned(
                    right: 10.0,
                    top: 20,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_none,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Special for you',
                  style: TextStyle(
                      color: Color(0xffEC8000),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon:
                        SvgPicture.asset('assets/icons/arrow-square-right.svg'))
              ],
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 80.0,
                enlargeCenterPage: false,
                viewportFraction: 0.5,
                enableInfiniteScroll: false,
                padEnds: false,
              ),
              items: [
                'assets/images/spec_scroll_img-1.png',
                'assets/images/spec_scroll_img-2.png',
                'assets/images/spec_scroll_img-3.png',
                'assets/images/spec_scroll_img-4.png',
                'assets/images/spec_scroll_img-5.png',
              ].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: Image.asset(i),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Text(
              'What would you like to do',
              style: GoogleFonts.roboto(
                  color: Color(0xff0560FA),
                  fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            SingleChildScrollView(
              child: CarouselSlider.builder(
                options: CarouselOptions(
                    height: 400.0,
                    enlargeCenterPage: false,
                    viewportFraction: 0.5,
                    enableInfiniteScroll: false,
                    scrollDirection: Axis.vertical,
                    padEnds: false),
                itemCount: 3,
                itemBuilder: (context, index, realIndex) {
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          height: 180.0,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffF2F2F2),
                          ),
                          child: Column(
                            children: [
                              SvgPicture.asset('images/call-man.svg'),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          height: 180.0,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(0xffF2F2F2),
                          ),
                          alignment: Alignment.center,
                          child: Text('Container ${(index * 2) + 2}'),
                        ),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
