
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';


import 'log_In.dart';
import 'otp_verification.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? selectedValue;
  String? selectedValue2;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const Gap(20),
                Image.asset('assets/LOGO 2.png'),
                const Gap(20),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      hintText: 'Name',
                      hintStyle: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Color(0xFFC4C4C4),
                              fontWeight: FontWeight.w500)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.011),
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF07A2A4),
                                borderRadius: BorderRadius.circular(45)),
                            child: Image.asset("assets/iconUser.png")),
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
                const Gap(20),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      hintText: 'Surname',
                      hintStyle: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: Color(0xFFC4C4C4),
                            fontWeight: FontWeight.w500),
                      ),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.011),
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFF07A2A4),
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Image.asset("assets/iconUser.png"),
                        ),
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
                const Gap(20),
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
                              fontWeight: FontWeight.w500)),
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
                      // focusColor: const Color(0xFFF9F9F9),
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
                const Gap(20),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: DropdownButtonFormField<String>(
                    icon: Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.06),
                      child: const Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value!;
                      });
                    },
                    items: ['Option 1', 'Option 2', 'Option 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      hintText: 'Select Church',
                      hintStyle: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Color(0xFF4F5B79),
                              fontWeight: FontWeight.w500)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.011),
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF07A2A4),
                                borderRadius: BorderRadius.circular(45)),
                            child: Image.asset("assets/icon 3.png")),
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
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Color(0xFFF9F9F9),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: DropdownButtonFormField<String>(
                    icon: Padding(
                      padding: EdgeInsets.only(right: screenWidth * 0.06),
                      child: const Icon(Icons.keyboard_arrow_down_outlined),
                    ),
                    value: selectedValue2,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value!;
                      });
                    },
                    items: ['Option 1', 'Option 2', 'Option 3']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      hintText: 'Select focal-point',
                      hintStyle: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: Color(0xFF4F5B79),
                              fontWeight: FontWeight.w500)),
                      prefixIcon: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                            vertical: screenHeight * 0.011),
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color(0xFF07A2A4),
                                borderRadius: BorderRadius.circular(45)),
                            child: Image.asset("assets/icon 2.png")),
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
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(
                          color: Color(0xFFF9F9F9),
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(20),
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
                const Gap(20),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                      ),
                      hintText: 'Re-type Password here',
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
                const Gap(35),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.09,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => const OTP_Verification()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF07A2A4),
                    ),
                    child: Text(
                        style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFFFFFFF)
                            )
                        ),
                        'Submit'),
                  ),
                ),
                const Gap(20),
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
                        'Already have an account? '),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(builder: (builder) => const LogInScreen())
                        );
                      },
                      child: Text(
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF047EC3),
                            ),
                          ),
                          'Login'),
                    ),
                  ],
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
