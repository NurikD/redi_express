import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(padding: EdgeInsets.only(top: 50)),
        Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Create an account',
                style: GoogleFonts.roboto(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: Color(0xff3A3A3A),
                        fontWeight: FontWeight.bold)),
              ),
              Text('Complete the sign up process to get started',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                    color: Color(0xffA7A7A7),
                  ))),
              Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Full Name', style: TextStyle(
                      color: Colors.black45
                    ),),
                    Padding(padding: EdgeInsets.only(top: 5)),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Abecd fsgh'),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Phone Number', style: TextStyle(
                      color: Colors.black45
                    ),),
                    Padding(padding: EdgeInsets.only(top: 5)),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: '0000000000000'),
                        keyboardType: TextInputType.number,
                  ), 
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Email Address', style: TextStyle(
                      color: Colors.black45
                    ),),
                    Padding(padding: EdgeInsets.only(top: 5)),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: '******@mail.com'),
                        keyboardType: TextInputType.emailAddress,
                  ), 
                  Padding(padding: EdgeInsets.only(top: 20)),
                  Text('Password', style: TextStyle(
                      color: Colors.black45
                    ),),
                    Padding(padding: EdgeInsets.only(top: 5)),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(), hintText: '********', suffixIcon: IconButton( 
                          icon: Icon(_isObscure ? Icons.visibility_off : Icons.visibility),
                          onPressed: (){
                            setState(() {
                              _isObscure = ! _isObscure;
                            });
                          },
                        )),
                        obscureText: _isObscure,
                        keyboardType: TextInputType.visiblePassword,
                  )
                ]),
              )
            ]),
          ),
        )
      ],
    ));
  }
}
