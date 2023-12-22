import 'package:flexi_project/Screens/Auth/sign_Up.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import '../Bottom_Navigation/bottom_navigationBar.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Image.asset('assets/LOGO 1.png'),
              SizedBox(
                height: screenHeight * 0.03,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                    ),
                    hintText: '0000000000',
                    hintStyle: GoogleFonts.lato(
                       textStyle: const TextStyle(
                          color: Color(0xFF4F5B79),
                          fontWeight: FontWeight.w500),
                    ),
                    prefixIcon: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: screenWidth * 0.03,
                          vertical: screenHeight * 0.011),
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color(0xFF07A2A4),
                              borderRadius: BorderRadius.circular(45)),
                          child: Image.asset("assets/Mobile icon.png")),
                    ),
                    enabled: true,
                    focusColor: const Color(0xFFF9F9F9),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xFFF9F9F9),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                        color: Color(0xFFF9F9F9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: screenHeight * 0.03,
                    ),
                    hintText: 'Type Password here',
                    hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Color(0xFF4F5B79),
                            fontWeight: FontWeight.w500)),
                    prefixIcon: Image.asset("assets/iconPassword.png"),
                    suffixIcon: Image.asset('assets/iconEye.png'),
                    enabled: true,
                    focusColor: const Color(0xFFF9F9F9),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xFFF9F9F9),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Color(0xFFF9F9F9),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.04,
              ),
              SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.09,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BottomNavigation(
                          title: '',
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF07A2A4),
                  ),
                  child: Text(
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      'Login'),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.07,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF4F5B79),
                        ),
                      ),
                      'Forgot your password?'),
                  Text(
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF047EC3),
                        ),
                      ),
                      'Reset here'),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                          fontSize: screenWidth * 0.03,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF4F5B79),
                        ),
                      ),
                      'Don’t have an account?'),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const SignUpScreen()));
                    },
                    child: Text(
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF047EC3),
                          ),
                        ),
                        'Signup'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
