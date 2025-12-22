import 'package:blink_that/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _header(),
          // SizedBox(height: 1),
          Container(
            height: 180,
            // width: 375,
            color: Color(0xffEC0505),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomText(
                      text: 'New Year Sale',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 24,
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                            color: Color(0xffEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                            color: Color(0xffEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                            color: Color(0xffEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Container(
                          height: 108,
                          width: 86,
                          decoration: BoxDecoration(
                            color: Color(0xffEAD3D3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack _header() {
    return Stack(
      children: [
        Container(height: 190, color: Color(0xffEC0505)),
        _headerText(),
      ],
    );
  }

  Padding _headerText() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 46.0, 16.0, 16.0),
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
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    '16 minutes',
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.person, color: Colors.white, size: 24),
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
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
              Flexible(
                child: Text(
                  ' - ITM College, Sithouli, Gwalior(Satvik)',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SizedBox(width: 8),
              Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 22),
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
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search "ice-cream"',
            hintStyle: GoogleFonts.poppins(color: Colors.grey, fontSize: 12),
            prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
            suffixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(width: 1, height: 20, color: Colors.grey.shade300),
                SizedBox(width: 12),
                Icon(Icons.mic, color: Colors.black, size: 20),
                // SizedBox(width: 8),
              ],
            ),
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 16),
          ),
        ),
      ),
    );
  }
}
