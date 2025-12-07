import 'package:blink_that/repository/screens/navbar/cart/cartscreen.dart';
import 'package:blink_that/repository/screens/navbar/category/category.dart';
import 'package:blink_that/repository/screens/navbar/home/homescreen.dart';
import 'package:blink_that/repository/screens/navbar/print/printscreen.dart';
import 'package:blink_that/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int currentState = 0;
  List<Widget> pages = [HomeScreen(), Cartscreen(), Category(), Printscreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentState, children: pages),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, // Hide label for selected item
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: 'home.png'),
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: 'shopping.png'),
            ),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: 'category.png'),
            ),
            label: "Category",
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              height: 28,
              width: 28,
              child: UiHelper.CustomImage(img: 'printer.png'),
            ),
            label: "Print",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentState,
        onTap: (index) {
          setState(() {
            currentState = index;
          });
        },
      ),
    );
  }
}
