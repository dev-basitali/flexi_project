import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class TicketDetail extends StatefulWidget {
  const TicketDetail({super.key});

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(screenHeight * 0.05),
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                        color: Color(0xff07A2A4), Icons.arrow_back_ios_new),
                  ),
                ],
              ),
              Gap(screenHeight * 0.02),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.35),
                child: SizedBox(
                  width: screenWidth * 0.55,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                          style: GoogleFonts.roboto(
                            textStyle: TextStyle(
                              fontSize: screenWidth * 0.05,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF191D23),
                            ),
                          ),
                          'SUBJECT'),
                      InkWell(
                        onTap: () {},
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
                                  textStyle: const TextStyle(
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                'Closed'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gap(screenHeight * 0.05),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF979797),
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                      'Q. Lorem Ipsum is simply dummy text of the printing \nand typesetting industry. '),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.017),
                    child: Text(
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: const Color(0xFF979797),
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.02,
                          ),
                        ),
                        'June 29 | 12:45 AM'),
                  ),
                ],
              ),
              Gap(screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: const Color(0xFF979797),
                        fontWeight: FontWeight.w400,
                        fontSize: screenWidth * 0.035,
                      ),
                    ),
                      'Ans. Lorem Ipsum is simply dummy text the printing \nand typesetting industry. '),
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.017),
                    child: Text(
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: const Color(0xFF979797),
                            fontWeight: FontWeight.w400,
                            fontSize: screenWidth * 0.02,
                          ),
                        ),
                        'June 29 | 12:45 AM'),
                  ),
                ],
              ),
              Gap(screenHeight * 0.04),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
