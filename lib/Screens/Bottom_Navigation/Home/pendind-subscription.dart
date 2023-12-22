import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'notifications.dart';

class PendingSubs extends StatefulWidget {
  const PendingSubs({super.key});

  @override
  State<PendingSubs> createState() => _PendingSubsState();
}

class _PendingSubsState extends State<PendingSubs> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.07,
                  vertical: screenHeight * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/LOGO 3.png'),
                  Text(
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: const Color(0xFF000000),
                          fontSize: screenWidth * 0.05,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      'Jenny Wilson'),
                  IconButton(
                    icon: Icon(
                      color: const Color(0xFF07A2A4),
                      size: screenWidth * 0.07,
                      Icons.notifications,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (builder) => const Notifications()));
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Column(
                children: [
                  ListTile(
                    title: Text(
                        style: GoogleFonts.roboto(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        'Subscription Name/Status'),
                    subtitle: Padding(
                      padding: EdgeInsets.only(
                        top: screenHeight * 0.02,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: screenWidth * 0.17,
                            height: screenHeight * 0.03,
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFA51D),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Center(
                              child: Text(
                                  style: GoogleFonts.roboto(
                                    textStyle: TextStyle(
                                      color: Colors.white,
                                      fontSize: screenWidth * 0.03,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  'Pending'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    leading: Image.asset('assets/icon 4.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
