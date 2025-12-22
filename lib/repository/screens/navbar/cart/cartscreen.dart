import 'package:blink_that/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Cartscreen extends StatelessWidget {
  const Cartscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(height: 180, color: Color(0xffF7CB45)),
              _headerText(),
            ],
          ),
          SizedBox(height: 30),
          UiHelper.CustomImage(img: 'cartshopping.png'),
          SizedBox(height: 20),
          UiHelper.CustomText(
            text: 'Reordering will be easy',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontsize: 16,
          ),
          SizedBox(height: 5),
          UiHelper.CustomText(
            text: 'Items you order will show up here so you can buy',
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontsize: 10,
          ),
          UiHelper.CustomText(
            text: 'them again easily.',
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontsize: 10,
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                UiHelper.CustomText(
                  text: 'Bestsellers',
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 16,
                ),
                SizedBox(height: 5),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 5),
                      _buildProductCard(
                        productName: 'Amul Taaza Toned Fresh Milk',
                        deliveryTime: '16 MINS',
                        price: '₹ 27',
                        imageName: 'tooyum.png',
                      ),
                      SizedBox(width: 10),
                      _buildProductCard(
                        productName: 'Potato (Aloo)',
                        deliveryTime: '16 MINS',
                        price: '₹ 37',
                        imageName: 'icecream.png',
                      ),
                      SizedBox(width: 10),
                      _buildProductCard(
                        productName: 'Hybrid Tomato',
                        deliveryTime: '16 MINS',
                        price: '₹ 37',
                        imageName: 'muesli.png',
                      ),
                      SizedBox(width: 10),
                      _buildProductCard(
                        productName: 'Diet Coke',
                        deliveryTime: '16 MINS',
                        price: '₹ 45',
                        imageName: 'bourbon.png',
                      ),
                      SizedBox(width: 10),
                      _buildProductCard(
                        productName: 'Crackers',
                        deliveryTime: '16 MINS',
                        price: '₹ 25',
                        imageName: 'ata.png',
                      ),
                      SizedBox(width: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
                child: Icon(Icons.person, color: Colors.black, size: 24),
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

  Widget _buildProductCard({
    required String productName,
    required String deliveryTime,
    required String price,
    required String imageName,
  }) {
    return SizedBox(
      width: 71,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 78,
              width: 71,
              decoration: BoxDecoration(
                color: Color(0xffD9EBEB),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                'assets/image/$imageName',
                height: 78,
                width: 71,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 8),
          UiHelper.CustomText(
            text: productName,
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontsize: 10,
          ),
          SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.access_time,
                size: 12,
                color: Color(0xff8B4513),
              ),
              SizedBox(width: 2),
              UiHelper.CustomText(
                text: deliveryTime,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
                fontsize: 9,
              ),
            ],
          ),
          SizedBox(height: 4),
          UiHelper.CustomText(
            text: price,
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontsize: 12,
          ),
        ],
      ),
    );
  }
}
