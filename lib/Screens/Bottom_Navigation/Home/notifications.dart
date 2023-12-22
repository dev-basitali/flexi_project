import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        toolbarHeight: screenHeight * 0.13,
        title: const Text('Notifications'),
      ),
      body: Column(
        children: [
          ListTile(
            leading: DottedBorder(
              borderType: BorderType.Circle,
              color: const Color(0xFF07A2A4),
              strokeWidth: 1,
              child: const CircleAvatar(
                backgroundColor: Color(0xffFFFFFF),
              ),
            ),
            title: Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: const Color(0xFF000000),
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            subtitle: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Text(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: const Color(0xFFA5A5A5),
                      fontSize: screenWidth * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  '11:24am'),
            ),
          ),
          const Divider(),
          ListTile(
            leading: DottedBorder(
              borderType: BorderType.Circle,
              color: const Color(0xFF07A2A4),
              strokeWidth: 1,
              child: const CircleAvatar(
                backgroundColor: Color(0xffFFFFFF),
              ),
            ),
            title: Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            subtitle: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Text(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: const Color(0xFFA5A5A5),
                      fontSize: screenWidth * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  '11:24am'),
            ),
          ),
          const Divider(),
          ListTile(
            leading: DottedBorder(
              borderType: BorderType.Circle,
              color: const Color(0xFF07A2A4),
              strokeWidth: 1,
              child: const CircleAvatar(
                backgroundColor: Color(0xffFFFFFF),
              ),
            ),
            title: Text(
                style: GoogleFonts.lato(
                  textStyle: TextStyle(
                    color: const Color(0xFFA5A5A5),
                    fontSize: screenWidth * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
            subtitle: Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.01),
              child: Text(
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: const Color(0xFFA5A5A5),
                      fontSize: screenWidth * 0.02,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  '11:24am'),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}
