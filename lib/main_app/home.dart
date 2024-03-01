import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';

class mainHome extends StatefulWidget {
  const mainHome({super.key});

  @override
  State<mainHome> createState() => _mainHomeState();
}

class CarouselItem_1 {
  final String imagePath_1;
  final String textContainer_1;
  final int containerColor1;
  final int textColor1;
  final String smallText_1;
  final int smallTextColor1;

  CarouselItem_1(
      {required this.imagePath_1,
      required this.textContainer_1,
      required this.containerColor1,
      required this.textColor1,
      required this.smallText_1,
      required this.smallTextColor1});
}

class CarouselItem_2 {
  final String imagePath_2;
  final String textContainer_2;
  final int containerColor2;
  final int textColor2;
  final String smallText_2;
  final int smallTextColor2;

  CarouselItem_2(
      {required this.imagePath_2,
      required this.textContainer_2,
      required this.containerColor2,
      required this.textColor2,
      required this.smallText_2,
      required this.smallTextColor2});
}

class _mainHomeState extends State<mainHome> {
  List<CarouselItem_1> carouselItems1 = [
    CarouselItem_1(
        imagePath_1: 'assets/icons/call-man.svg',
        textContainer_1: 'Customer Care',
        containerColor1: 0xffF2F2F2,
        textColor1: 0xff0560FA,
        smallText_1:
            'Our customer care service line is available from 8 -9pm week days and 9 - 5 weekends - tap to call us today',
        smallTextColor1: 0xff3A3A3A),
    CarouselItem_1(
        imagePath_1: 'assets/icons/wallet.svg',
        textContainer_1: 'Fund your wallet',
        containerColor1: 0xffF2F2F2,
        textColor1: 0xff0560FA,
        smallText_1:
            'To fund your wallet is as easy as ABC, make use of our fast technology and top-up your wallet today',
        smallTextColor1: 0xff3A3A3A),
    CarouselItem_1(
        imagePath_1: 'assets/icons/pilot.svg',
        textContainer_1: 'Enroll as a rider',
        containerColor1: 0xffF2F2F2,
        textColor1: 0xff0560FA,
        smallText_1:
            'A chance for you to earn as you become one of our delivery agents, enroll and get the necessary trainings.',
        smallTextColor1: 0xff3A3A3A),
  ];

  List<CarouselItem_2> carouselItems2 = [
    CarouselItem_2(
        imagePath_2: 'assets/icons/package.svg',
        textContainer_2: 'Send a package',
        containerColor2: 0xff0560FA,
        textColor2: 0xffFFFFFF,
        smallText_2:
            'Request for a driver to pick up or deliver your package for you',
        smallTextColor2: 0xffFFFFFF),
    CarouselItem_2(
        imagePath_2: 'assets/icons/car.svg',
        textContainer_2: 'Book a rider',
        containerColor2: 0xffF2F2F2,
        textColor2: 0xff0560FA,
        smallText_2: 'Search for available rider within your area',
        smallTextColor2: 0xff3A3A3A),
    CarouselItem_2(
        imagePath_2: 'assets/icons/team.svg',
        textContainer_2: 'Refer and earn',
        containerColor2: 0xffF2F2F2,
        textColor2: 0xff0560FA,
        smallText_2:
            'Refer a friend to our platform and stand the chance of winning lots of goodies plus free delivery',
        smallTextColor2: 0xff3A3A3A),
  ];
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;
  int currentPageIndex = 0;

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
                      onPressed: () {
                        Navigator.pushNamed(context, '/notification');
                      },
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
                      margin: const EdgeInsets.symmetric(horizontal: 3.5),
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
                  color: const Color(0xff0560FA),
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
                  padEnds: false,
                ),
                itemCount: carouselItems1.length,
                itemBuilder: (context, index, realIndex) {
                  CarouselItem_1 currentItem1 = carouselItems1[index];
                  CarouselItem_2 currentItem2 = carouselItems2[index];
                  return Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          padding: const EdgeInsets.all(15.0),
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(currentItem1.containerColor1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 12.0, 0.0, 5.0),
                                child: SvgPicture.asset(
                                  currentItem1.imagePath_1,
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  currentItem1.textContainer_1,
                                  style: TextStyle(
                                      color: Color(currentItem1.textColor1),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  currentItem1.smallText_1,
                                  style: TextStyle(
                                      color:
                                          Color(currentItem1.smallTextColor1),
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          padding: const EdgeInsets.all(15.0),
                          height: MediaQuery.of(context).size.height,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 3,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(10.0),
                            color: Color(currentItem2.containerColor2),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(
                                    8.0, 12.0, 0.0, 5.0),
                                child: SvgPicture.asset(
                                  currentItem2.imagePath_2,
                                  width: 40.0,
                                  height: 40.0,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  currentItem2.textContainer_2,
                                  style: TextStyle(
                                      color: Color(currentItem2.textColor2),
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text(
                                  currentItem2.smallText_2,
                                  style: TextStyle(
                                      color:
                                          Color(currentItem2.smallTextColor2),
                                      fontSize: 8.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ],
                          ),
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
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: <Widget>[
          NavigationDestination(
            icon: SvgPicture.asset('icons/home.svg'),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('icons/wallet-icon.svg'),
            label: 'Wallet',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('icons/smart-car.svg'),
            label: 'Track',
          ),
          NavigationDestination(
            icon: SvgPicture.asset('icons/profile-circle.svg'),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}


