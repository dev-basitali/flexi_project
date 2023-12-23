import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Bottom_Navigation/Bottom_Sheet/bottom_navigationBar.dart';

class OTP_Verification extends StatefulWidget {
  const OTP_Verification({super.key});

  @override
  State<OTP_Verification> createState() => _OTP_VerificationState();
}

class _OTP_VerificationState extends State<OTP_Verification> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Gap(screenHeight * 0.1),
              Image.asset('assets/LOGO 1.png'),
              Gap(screenHeight * 0.08),
              Text(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                        fontSize: screenWidth * 0.05,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF2B395B),
                      )),
                  'Enter the 6 digit code we \nsent to your mobile number'),
              Gap(screenHeight * 0.02),
              Text(
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                      fontSize: screenWidth * 0.028,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF929EBA),
                    ),
                  ),
                  'We have sent a code to your mobile number, \nenter it below.'),
              Gap(screenHeight * 0.02),
              PinCodeFields(
                responsive: false,
                borderColor: const Color(0xFFF9F9F9),
                fieldHeight: screenHeight * 0.08,
                fieldWidth: screenWidth * 0.1,
                activeBackgroundColor: const Color(0xFFF9F9F9),
                fieldBackgroundColor: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(10.0),
                length: 6,
                onComplete: (String value) {},
              ),
              Gap(screenHeight * 0.01),
              SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.09,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (builder) => const BottomNavigation(title: '',),
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
                      'Verify'),
                ),
              ),
              Gap(screenHeight * 0.05),
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
                      'Didn’t receive code?  '),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF047EC3),
                          ),
                        ),
                        'Resend'),
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
