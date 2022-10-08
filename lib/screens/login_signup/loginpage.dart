// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isTicked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
              "Sign in",
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
                  SizedBox(
                    height: 10,
                  ),
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
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.5, color: Colors.white), //<-- SEE HERE
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  Text(
                    "Password",
                    style: TextStyle(
                      color: Color(0xFFFCF8F3),
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
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
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            width: 1.5, color: Colors.white), //<-- SEE HERE
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
                        "Remember me",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF96D2C6),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      Text(
                        "Forgot password?",
                        style: TextStyle(
                          fontSize: 14,
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
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          fontFamily: "PoppinsReg",
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Dont have an account?",
                        style: TextStyle(
                            color: Color(0xFFD5EDE8),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                      Text(
                        " Sign up",
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
    );
  }
}
