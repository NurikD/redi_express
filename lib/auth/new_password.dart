import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewPass extends StatefulWidget {
  const NewPass({super.key});

  @override
  State<NewPass> createState() => _NewPassState();
}

class _NewPassState extends State<NewPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.18,
          ),
          Form(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Forgot Password',
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              fontSize: 30,
                              color: Color(0xff3A3A3A),
                              fontWeight: FontWeight.bold)),
                    ),
                    Text('Enter new password',
                        style: GoogleFonts.roboto(
                            textStyle: const TextStyle(
                          color: Color(0xffA7A7A7),
                        ))),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.04,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'New Password',
                          style: TextStyle(color: Colors.black45),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: '********',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        const Padding(padding: EdgeInsets.only(top: 20)),
                        const Text(
                          'Confirm Password',
                          style: TextStyle(color: Colors.black45),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        TextFormField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            hintText: '********',
                          ),
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.15),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Log in',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  backgroundColor: const Color(0xff0560FA),
                                  minimumSize: const Size(150, 60)),
                            )),
                      ],
                    )
                  ]),
            ),
          )
        ],
      )),
    );
  }
}
