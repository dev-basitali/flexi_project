import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFFFFF),
        centerTitle: true,
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text('Support'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                children: [
                  Text('New Request'),
                ],
              ),

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
              SizedBox(
                width: screenWidth * 0.9,
                child: Stack(
                    children: [
                      TextFormField(
                        maxLines: 7,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.02,
                            horizontal: screenWidth * 0.05,),
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
                      )]
                ),
              ),
              Container(
                width: screenWidth * 0.9,
                height: screenHeight * 0.27,
                decoration: BoxDecoration(
                  color: const Color(0xFF666666),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Image \n'),
                    Text('Add a file'),
                  ],
                ),
              ),
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
                      'Send'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
