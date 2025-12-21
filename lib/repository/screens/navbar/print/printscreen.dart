import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children: [
            Container(
              height: 180,
              color: Color(0xffF7CB45),
            ),
            _headerText(),
          ],
        ),
    );
  }
    Padding _headerText() {
    return Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 40.0, 16.0, 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Blinkit in',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        '16 minutes',
                        style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
              // SizedBox(height: 4),
              Row(
                children: [
                  Text(
                    'OFFICE',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    ' - ITM College, Sithouli, Gwalior(Satvik)',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.black,
                    size: 22,
                  ),
                ],
              ),
              SizedBox(height: 12),
              _searchfield(),
            ],
          ),
        );
  }

  Container _searchfield() {
    return Container(
                height: 37,
                width: 387,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search "ice-cream"',
                      hintStyle: GoogleFonts.poppins(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 20,
                      ),
                      suffixIcon: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            width: 1,
                            height: 20,
                            color: Colors.grey.shade300,
                          ),
                          SizedBox(width: 12),
                          Icon(
                            Icons.mic,
                            color: Colors.black,
                            size: 20,
                          ),
                          // SizedBox(width: 8),
                        ],
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16)
                    ),
                  ),
                ),
              );
  }
}