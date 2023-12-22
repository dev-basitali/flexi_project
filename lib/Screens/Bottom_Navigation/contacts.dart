import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home/home-page.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              width: screenWidth * 0.9,
              child: Column(
                children: [
                  Text(
                      style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: const Color(0xFF006838),
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.w700,
                          )
                      ),
                      'Contacts'),
                  TextFormField(
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.03,
                          horizontal: screenWidth * 0.05),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF8D8D8D),
                              fontWeight: FontWeight.w500)),
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
                          color: Color(0xFF07A2A4),
                        ),
                      ),
                    ),
                  ),
                  ListTile(
                    leading: Image.asset('assets/img 1.png'),
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700),
                        ),
                        'Arlene McCoy'),
                    subtitle: Text(
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                        '+91 999 2222 433'),
                    trailing: const SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.call),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Image.asset('assets/img 1.png'),
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700),
                        ),
                        'Arlene McCoy'),
                    subtitle: Text(
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                        '+91 999 2222 433'),
                    trailing: const SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.call),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Image.asset('assets/img 1.png'),
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700),
                        ),
                        'Arlene McCoy'),
                    subtitle: Text(
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                        '+91 999 2222 433'),
                    trailing: const SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.call),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Image.asset('assets/img 1.png'),
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700),
                        ),
                        'Arlene McCoy'),
                    subtitle: Text(
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                        '+91 999 2222 433'),
                    trailing: const SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.call),
                        ],
                      ),
                    ),
                  ),
                  const Divider(),
                  ListTile(
                    leading: Image.asset('assets/img 1.png'),
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w700),
                        ),
                        'Arlene McCoy'),
                    subtitle: Text(
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                              color: Color(0xFF000000),
                              fontWeight: FontWeight.w400),
                        ),
                        '+91 999 2222 433'),
                    trailing: const SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.message),
                          Icon(Icons.call),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
