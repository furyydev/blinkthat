// import 'package:blink_that/repository/screens/home/homescreen.dart';
import 'package:blink_that/repository/screens/navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:blink_that/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            UiHelper.CustomImage(img: 'loginscreenitems.png'),
            SizedBox(height: 10),
            UiHelper.CustomImage(img: 'blinkitlogo.png'),
            UiHelper.CustomText(
              text: 'India’s last minute app',
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontsize: 20,
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFFFFFF),
                ),
                alignment: Alignment.center,
                height: 200,
                width: 350,
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    UiHelper.CustomText(
                      text: 'Satvik',
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w400,
                      fontsize: 15,
                    ),
                    SizedBox(height: 5),
                    UiHelper.CustomText(
                      text: '78277XXXX',
                      color: Color(0xff9C9C9C),
                      fontWeight: FontWeight.w700,
                      fontsize: 14,
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavbar(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0XFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            UiHelper.CustomText(
                              text: 'Login with',
                              color: Color(0xffFFFFFF),
                              fontWeight: FontWeight.w700,
                              fontsize: 14,
                            ),
                            SizedBox(width: 5),
                            UiHelper.CustomImage(
                              img: 'zomato.png',
                              height: 15.44,
                              width: 73,
                              top: 652,
                              left: 200,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomText(
                      text:
                          'Access your saved addresses from Zomato automatically!',
                      color: Color(0xff9C9C9C),
                      fontWeight: FontWeight.normal,
                      fontsize: 10,
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomText(
                      text: 'or login with phone number',
                      color: Color(0xff269237),
                      fontWeight: FontWeight.w400,
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
