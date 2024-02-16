import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:redi_express/auth/log_in.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/gestures.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  bool _isObscure = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child:
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
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
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.04,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Full Name', style: TextStyle(
                                  color: Colors.black45
                              ),),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(), hintText: 'Abecd fsgh'),
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20)),
                              const Text('Phone Number', style: TextStyle(
                                  color: Colors.black45
                              ),),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(), hintText: '0000000000000'),
                                keyboardType: TextInputType.number,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20)),
                              const Text('Email Address', style: TextStyle(
                                  color: Colors.black45
                              ),),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              TextFormField(
                                decoration: const InputDecoration(
                                    border: OutlineInputBorder(), hintText: '******@mail.com'),
                                keyboardType: TextInputType.emailAddress,
                              ),
                              const Padding(padding: EdgeInsets.only(top: 20)),
                              const Text('Password', style: TextStyle(
                                  color: Colors.black45
                              ),),
                              const Padding(padding: EdgeInsets.only(top: 5)),
                              TextFormField(
                                decoration: InputDecoration(
                                    border: const OutlineInputBorder(), hintText: '********', suffixIcon: IconButton(
                                  icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                                  onPressed: (){
                                    setState(() {
                                      _isObscure = ! _isObscure;
                                    });
                                  },
                                )),
                                obscureText: _isObscure,
                                keyboardType: TextInputType.visiblePassword,
                              ),
                              Row(
                                children: [
                                  Checkbox(value: isChecked, onChanged: (bool? value){
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  },
                                      activeColor: const Color(0xff0560FA)
                                  ),
                                  Column(
                                    children: [
                                      const Text(
                                        'By ticking this box, you agree to our ',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.black45,
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: () => launch('https://google.com'),
                                        child: const Text(
                                          'Terms and conditions and private policy',
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.yellow,
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.1  ,
                              ),
                              Container(
                                  width: double.infinity,
                                  child: ElevatedButton(onPressed: (){
                                  },
                                    child: const Text('Sign Up', style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(5)),
                                      backgroundColor: const Color(0xff0560FA),
                                        minimumSize: const Size(150, 60)
                                    ),
                                  )
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account? ',
                                    style: GoogleFonts.roboto(color: Colors.black45),

                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                                          builder: (context) => const LogIn()));
                                    },
                                    child: const Text(
                                      'Sign in',
                                      style: TextStyle(color: Color(0xff0560FA)),
                                    ),
                                  )
                                ],
                              ),
                              const Padding(padding: EdgeInsets.only(top: 25)),
                              Center(
                                  child: Column(
                                    children: [
                                      const Text('or sign in using', style: TextStyle(
                                          color: Colors.black45
                                      ),),
                                      const Padding(padding: EdgeInsets.only(top: 5)),
                                      SvgPicture.asset('assets/images/google-icon.svg'),
                                    ],
                                  )
                              ),

                            ]),
                  ]),
                ),
              ),

            ],
          ),
        )
    );
  }
}
