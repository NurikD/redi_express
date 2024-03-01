import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class packageForm extends StatefulWidget {
  const packageForm({Key? key}) : super(key: key);

  @override
  State<packageForm> createState() => _packageFormState();
}

class _packageFormState extends State<packageForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        leading: Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: IconButton(
            icon: SvgPicture.asset('assets/icons/arrow-square-left.svg'),
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Text(
            'Send a package',
            style: TextStyle(
              color: Color(0xffA7A7A7),
            ),
          ),
        ),
        elevation: 1,
      ),
      body: ListView(
        children: [
          Form(
            child: Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/origin.svg'),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text(
                        'Origin Details',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Mbaraugba Ovom Amaa Asaa',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Abia State, Nigeria',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '+234 56543 96854',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Others',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Color(0xff0560FA),
                      ),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text(
                        'Destination Details',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Ademola Alabi Close',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Lagos, Nigeria',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '+234 56543 96854',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Others',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.add_box_outlined,
                        color: Color(0xff0560FA),
                      ),
                      Padding(padding: EdgeInsets.only(right: 5.0)),
                      Text(
                        'Add Destination',
                        style: GoogleFonts.roboto(
                          color: Color(0xffA7A7A7),
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Package details',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Books and stationary',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: '1000kg',
                    ),
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'N50,000',
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.03,
                  ),
                  Row(
                    children: [
                      Text(
                        'Select delivery type',
                        style: GoogleFonts.roboto(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2 - 16,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          padding: const EdgeInsets.all(15.0),
                          height: 125.0,
                          decoration: BoxDecoration(
                            color: Color(0xff0560FA),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.access_time_outlined,
                                color: Colors.white,
                                size: 44,
                              ),
                              Padding(padding: EdgeInsets.only(top: 8.0)),
                              Text(
                                'Instant delivery',
                                style: GoogleFonts.roboto(
                                    color: Colors.white, fontSize: 18),
                              )
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
                          height: 125.0,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.0),
                                spreadRadius: -5,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            color: Color(0xffF2F2F2),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Color(0xffA7A7A7),
                                size: 44,
                              ),
                              Padding(padding: EdgeInsets.only(top: 8.0)),
                              Text(
                                'Instant delivery',
                                style: GoogleFonts.roboto(
                                    color: Color(0xffA7A7A7), fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
