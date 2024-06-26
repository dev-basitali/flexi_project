
import 'package:flexi_project/Screens/Bottom_Navigation/Home/pendind-subscription.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'inactive-subscription.dart';
import 'notifications.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.07,vertical: screenHeight * 0.03),
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
                          MaterialPageRoute(builder: (builder) => const Notifications())
                      );
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Column(
                children: [
                  GestureDetector(
                    onDoubleTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => const PendingSubs())
                      );
                    },
                    onTap: (){
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) => const InactiveSubs())
                      );
                    },
                    child: ListTile(
                      title: Text(
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: const Color(0xFF000000),
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          'Subscription Name'),
                      subtitle: Text(
                          style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                              color: const Color(0xFF000000),
                              fontSize: screenWidth * 0.03,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          'Flexi 2000'),
                      leading: Image.asset('assets/icon 4.png'),
                    ),
                  ),
                  ListTile(
                    title: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        'Date of expiration'),
                    subtitle: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        '12 April, 2021'),
                    leading: Image.asset('assets/icon 5.png'),
                  ),
                  ListTile(
                    title: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        'Bonus internet'),
                    subtitle: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        '12 GB'),
                    leading: Image.asset('assets/icon 6.png'),
                  ),
                  ListTile(
                    title: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        'SMS sent'),
                    subtitle: Text(
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: const Color(0xFF000000),
                            fontSize: screenWidth * 0.03,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        '25'),
                    leading: Image.asset('assets/Vector.png'),
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
