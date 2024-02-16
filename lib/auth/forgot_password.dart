import 'package:flutter/material.dart';
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.18,
            ),
            Form(
              child: Padding(
                padding: const EdgeInsets.all(20),
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
                    Text('Enter your email address',
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
                          'Email Address',
                          style: TextStyle(color: Colors.black45),
                        ),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        TextFormField(
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'nwaezeken@gmail.com'),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.08,
                        ),
                        Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                'Send OTP',
                                style: TextStyle(color: Colors.white),
                              ),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                backgroundColor: const Color(0xff0560FA),
                                minimumSize: const Size(150, 60)
                              ),
                            )),
                        const Padding(padding: EdgeInsets.only(top: 5)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Remember password? Back to ',  style: TextStyle(
                              color: Colors.black45
                            ),),
                            GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/logIn');
                              },
                              child: const Text('Sign In', style: TextStyle(
                                color: Color(0xff0560FA)
                              ),),
                            )
                          ],
                        )
                      ],
                    )
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
