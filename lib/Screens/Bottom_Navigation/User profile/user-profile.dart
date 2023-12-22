
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Support/support.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

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
                Gap(screenHeight * 0.05),
                Text(
                    style: GoogleFonts.roboto(
                      color: const Color(0xFF006838),
                      fontSize: screenWidth * 0.04,
                      fontWeight: FontWeight.w700,
                    ),
                    'Profile'),
                Gap(screenHeight * 0.03),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: screenHeight * 0.07,
                      backgroundColor: Color(0xFFCDCDCD),
                    ),
                    Image.asset('assets/img 2.png')
                  ],
                ),
                Gap(screenHeight * 0.022),
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
                Gap(screenHeight * 0.022),
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
                Gap(screenHeight * 0.022),
                SizedBox(
                  width: screenWidth * 0.9,
                  child: TextFormField(
                    readOnly: true,
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

                      // focusColor: const Color(0xFF07A2A4),
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
                Gap(screenHeight * 0.022),
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
                Gap(screenHeight * 0.022),
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

                Gap(screenHeight * 0.05),
                SizedBox(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.09,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF07A2A4),
                    ),
                    child: Text(
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              color: Color(0xFFFFFFFF)
                          ),
                        ),
                        'Save'),
                  ),
                ),
                Gap(screenHeight * 0.03),
                SizedBox(
                  width: screenWidth * 1,
                  height: screenHeight * 0.09,
                  child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (builder) => const SupportScreen(),),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        )
                    ),
                    child: Row(
                      children: [
                        Image.asset('assets/img 3.png'),
                        Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.04),
                          child: SizedBox(
                            width: screenWidth * 0.75,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xFF000000),
                                      ),
                                    ),
                                    'Support'),
                                Icon(
                                    color: Color(0xFF788292),
                                    size: screenHeight * 0.02,
                                    Icons.arrow_forward_ios)
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
