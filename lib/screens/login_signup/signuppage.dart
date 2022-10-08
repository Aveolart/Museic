// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool isTicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/james-owen-oFHMk5fD8-s-unsplash2.jpg"),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.only(top: 100, left: 25, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                  fontFamily: "PoppinsReg",
                  fontSize: 40,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5, bottom: 50),
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                    color: Color(0xFFB9E1D9),
                    fontWeight: FontWeight.w400,
                    fontFamily: "PoppinsReg",
                    fontSize: 18,
                  ),
                ),
              ),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Username",
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontSize: 18,
                      ),
                      cursorHeight: 25,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 14,
                          bottom: 14,
                          right: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF1DAC4)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1.5,
                              color: Color(0xFFF1DAC4)), //<-- SEE HERE
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Enter Password",
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontSize: 18,
                      ),
                      cursorHeight: 25,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 14,
                          bottom: 14,
                          right: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF1DAC4)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1.5,
                              color: Color(0xFFF1DAC4)), //<-- SEE HERE
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    Text(
                      "Confirm Password",
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      style: TextStyle(
                        color: Color(0xFFFCF8F3),
                        fontSize: 18,
                      ),
                      cursorHeight: 25,
                      textAlignVertical: TextAlignVertical.center,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(
                          left: 10,
                          top: 14,
                          bottom: 14,
                          right: 10,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Color(0xFFF1DAC4)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              width: 1.5,
                              color: Color(0xFFF1DAC4)), //<-- SEE HERE
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              isTicked = !isTicked;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 6),
                            padding: EdgeInsets.all(2),
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                              color: Color(0xFFFCF8F3),
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: isTicked
                                ? Icon(
                                    Icons.check,
                                    size: 16,
                                    color: Colors.black,
                                  )
                                : null,
                          ),
                        ),
                        Text(
                          "I agree to the ",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 15,
                            color: Color(0xFF96D2C6),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 65),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xFFFB5A00),
                      ),
                      // width: 160,
                      height: 55,
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w400,
                            fontFamily: "PoppinsReg",
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              color: Color(0xFFD5EDE8),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          " Login",
                          style: TextStyle(
                              color: Color(0xFFFB5A00),
                              fontSize: 15,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
