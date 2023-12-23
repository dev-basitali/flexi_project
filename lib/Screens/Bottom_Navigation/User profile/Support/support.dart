import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Ticket-Detail/ticket_detail.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(screenHeight * 0.02),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                        color: Color(0xff07A2A4), Icons.arrow_back_ios_new),
                  ),
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            style: GoogleFonts.roboto(
                              textStyle: TextStyle(
                                color: Color(0xFF006838),
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            'Support'),
                      ],
                    ),
                  ),
                ],
              ),
              Gap(screenHeight * 0.02),
              SizedBox(
                width: screenWidth * 0.9,
                child: Row(
                  children: [
                    Text(
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: Color(0xFF006838),
                            fontWeight: FontWeight.w700,
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        'New Request'),
                  ],
                ),
              ),
              Gap(screenHeight * 0.015),
              SizedBox(
                width: screenWidth * 0.9,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.03,
                        horizontal: screenWidth * 0.05),
                    hintText: 'Subject',
                    hintStyle: GoogleFonts.roboto(
                        textStyle: const TextStyle(
                            color: Color(0xFFB8B8B8),
                            fontWeight: FontWeight.w500)),
                    enabled: true,
                    focusColor: const Color(0xFFF9F9F9),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                      borderSide: const BorderSide(
                        color: Color(0xFF07A2A4),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(45),
                      borderSide: const BorderSide(
                        color: Color(0xFFE2E2E2),
                      ),
                    ),
                  ),
                ),
              ),
              Gap(screenHeight * 0.02),
              SizedBox(
                width: screenWidth * 0.9,
                child: Stack(children: [
                  TextFormField(
                    maxLines: 7,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                        vertical: screenHeight * 0.02,
                        horizontal: screenWidth * 0.05,
                      ),
                      // suffix: Text(
                      //     '0/50',
                      //     style: TextStyle(
                      //       color: Colors.grey,
                      //     ),
                      //   ),
                      hintText: 'Add Description ...',
                      hintStyle: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                              color: Color(0xFFB8B8B8),
                              fontWeight: FontWeight.w500)),
                      enabled: true,
                      focusColor: const Color(0xFFF9F9F9),
                      focusedBorder: const OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xFF07A2A4),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        // borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Color(0xFFE2E2E2),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '0/50',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  )
                ]),
              ),
              Gap(screenHeight * 0.02),
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.27,
                decoration: BoxDecoration(
                    color: const Color(0xFF666666),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.035,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        'Image \n'),
                    Text(
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                            fontSize: screenWidth * 0.025,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFFFFFFF),
                          ),
                        ),
                        'Add a file'),
                  ],
                ),
              ),
              Gap(screenHeight * 0.025),
              SizedBox(
                width: screenWidth * 0.9,
                height: screenHeight * 0.09,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF07A2A4),
                  ),
                  child: Text(
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFFFFFFF)),
                      ),
                      'Send'),
                ),
              ),
              Gap(screenHeight * 0.05),
              Container(
                width: screenWidth * 1,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(screenHeight * 0.05),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF191D23),
                                ),
                              ),
                              'SUBJECT'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const TicketDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: screenWidth * 0.2,
                              height: screenHeight * 0.035,
                              decoration: BoxDecoration(
                                color: const Color(0xFFF8AB8C),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191D23),
                                      ),
                                    ),
                                    'New'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Q. Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. \n'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Ans. Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.'),
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'June 29 | 12:45 AM'),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF979797),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF191D23),
                                ),
                              ),
                              'SUBJECT'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const TicketDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: screenWidth * 0.23,
                              height: screenHeight * 0.035,
                              decoration: BoxDecoration(
                                color: const Color(0xFF8CE5F8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191D23),
                                      ),
                                    ),
                                    'In progress'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Q. Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. \n'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Ans. Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.'),
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'June 29 | 12:45 AM'),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF979797),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF191D23),
                                ),
                              ),
                              'SUBJECT'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const TicketDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.035,
                              decoration: BoxDecoration(
                                color: const Color(0xFFA80000),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191D23),
                                      ),
                                    ),
                                    'Closed'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Q. Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. \n'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Ans. Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.'),
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'June 29 | 12:45 AM'),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF979797),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF191D23),
                                ),
                              ),
                              'SUBJECT'),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (builder) => const TicketDetail(),
                                ),
                              );
                            },
                            child: Container(
                              width: screenWidth * 0.25,
                              height: screenHeight * 0.035,
                              decoration: BoxDecoration(
                                color: const Color(0xFF8CE5F8),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Text(
                                    style: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xFF191D23),
                                      ),
                                    ),
                                    'In progress'),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Q. Lorem Ipsum is simply dummy text of the printing \n and typesetting industry. \n'),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.027,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'Ans. Lorem Ipsum is simply dummy text of the \n printing and typesetting industry.'),
                          Text(
                              style: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF857F7E),
                                ),
                              ),
                              'June 29 | 12:45 AM'),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFF979797),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
