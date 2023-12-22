import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  bool isChecked = false;
  String selectedValue = 'Monthly';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Payment'),
      ),
      body: Column(
        children: [
          Container(
            height: screenHeight * 0.25,
            width: screenWidth * 1,
            color: Color(0xFF090831),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: screenWidth * 0.06,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    'Total Amount \n'),
                Text(
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: screenWidth * 0.07,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    '\$ 100')
              ],
            ),
          ),
          Text('Choose subscription'),
          ListTile(
            leading: Radio<String>(
              value: 'Monthly',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            title: Text('Flexi 2000'),
            subtitle: Text('2 000 F CFA'),
          ),
          ListTile(
            leading: Radio<String>(
              value: 'Monthly',
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            title: Text('Flexi 2000'),
            subtitle: Text('2 000 F CFA'),
          ),
        ],
      ),
    );
  }
}
