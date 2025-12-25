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
          SizedBox(height: 1),
          _NewYearSale(),
          // SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            UiHelper.CustomImage(img: 'image 72.png'),
                            Positioned(
                              bottom: -20,
                              right: -10,
                              child: SizedBox(
                                height: 40, // Fixed size container
                                width: 40,
                                child: UiHelper.CustomImage(
                                  img: 'addbutton.png',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        UiHelper.CustomImage(img: 'image 73.png'),
                        Positioned(
                          bottom: -20,
                          right: -10,
                          child: SizedBox(
                            height: 40, // Fixed size container
                            width: 40,
                            child: UiHelper.CustomImage(img: 'addbutton.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        UiHelper.CustomImage(img: 'image 66.png'),
                        Positioned(
                          bottom:
                              -20, // Negative value = goes outside bottom edge
                          right:
                              -10, // Negative value = goes outside right edge
                          child: SizedBox(
                            height: 40, // Fixed size container
                            width: 40,
                            child: UiHelper.CustomImage(img: 'addbutton.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // First child: Base image (background layer)
                        UiHelper.CustomImage(img: 'image 45.png'),
                        // Second child: Add button positioned at bottom-right, overlapping
                        Positioned(
                          bottom:
                              -20, // Negative value = goes outside bottom edge
                          right:
                              -10, // Negative value = goes outside right edge
                          child: SizedBox(
                            height: 40, // Fixed size container
                            width: 40,
                            child: UiHelper.CustomImage(img: 'addbutton.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container _NewYearSale() {
    return Container(
      height: 200,
      width: double.infinity,
      color: Color(0xffEC0505),
      child: Column(
        children: [
          SizedBox(height: 8),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UiHelper.CustomImage(
                  img: 'crackers1.png',
                  width: 50,
                  height: 57.8,
                ),
                UiHelper.CustomImage(
                  img: 'crackers2.png',
                  width: 50,
                  height: 57.8,
                ),
                UiHelper.CustomText(
                  text: 'New Year Sale',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontsize: 20,
                ),
                UiHelper.CustomImage(
                  img: 'crackers2.png',
                  width: 50,
                  height: 57.8,
                ),
                UiHelper.CustomImage(
                  img: 'crackers1.png',
                  width: 50,
                  height: 57.8,
                ),
              ],
            ),
          ),
          SizedBox(height: 16),
          _newyearItems(),
          SizedBox(height: 20),
        ],
      ),
    );
  }

  Row _newyearItems() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 108,
          width: 86,
          decoration: BoxDecoration(
            color: Color(0xffEAD3D3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12),
                child: Column(
                  children: [
                    UiHelper.CustomText(
                      text: 'Candles &',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                    UiHelper.CustomText(
                      text: 'Lightes',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('assets/image/sale1.png', fit: BoxFit.cover),
              ),
            ],
          ),
        ),

        Container(
          height: 108,
          width: 86,
          decoration: BoxDecoration(
            color: Color(0xffEAD3D3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    UiHelper.CustomText(
                      text: 'Chocolates &',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                    UiHelper.CustomText(
                      text: 'Sweets',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset('assets/image/sale2.png', fit: BoxFit.cover),
              ),
            ],
          ),
        ),
        Container(
          height: 108,
          width: 86,
          decoration: BoxDecoration(
            color: Color(0xffEAD3D3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    UiHelper.CustomText(
                      text: 'Appliances &',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                    UiHelper.CustomText(
                      text: 'Gadgets',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/image/sale3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 108,
          width: 86,
          decoration: BoxDecoration(
            color: Color(0xffEAD3D3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Column(
                  children: [
                    UiHelper.CustomText(
                      text: 'Home',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                    UiHelper.CustomText(
                      text: '& Living',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontsize: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Image.asset(
                    'assets/image/sale4.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
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
