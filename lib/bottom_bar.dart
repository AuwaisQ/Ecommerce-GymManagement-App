import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/home_page.dart';
import 'package:omark_gym/reward.dart';
import 'package:omark_gym/store_home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'gym_yoga_crossfit.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentTab = 0;
  final List<Widget> screen = [const GYCPage()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50.r), color: Colors.black),
            height: 55.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ///1st button
                SizedBox(
                  width: 70.w,
                  child: MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        currentScreen = const HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 18.h,
                          width: 18.w,
                          child: Image.asset('images/home.png'),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Home',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontFamily: primaryfont),
                        )
                      ],
                    ),
                  ),
                ),

                ///2nd Button
                SizedBox(
                  width: 70.w,
                  child: MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        currentScreen = const GYCPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 21.h,
                          width: 27.w,
                          child: Image.asset('images/gym.png'),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Gym',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontFamily: primaryfont),
                        )
                      ],
                    ),
                  ),
                ),

                ///3st button
                SizedBox(
                  width: 70.w,
                  child: MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      setState(() {
                        currentScreen = const Reward();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/reward.png',
                          height: 20.h,
                          width: 20.w,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Reward',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontFamily: primaryfont),
                        )
                      ],
                    ),
                  ),
                ),

                ///4th Button
                SizedBox(
                  width: 70.w,
                  child: MaterialButton(
                    splashColor: Colors.transparent,
                    onPressed: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              duration: const Duration(milliseconds: 600),
                              reverseDuration:
                                  const Duration(milliseconds: 200),
                              child: const StoreHomePage(),
                              type: PageTransitionType.fade));
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20.h,
                          width: 20.w,
                          child: Image.asset('images/store.png'),
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Text(
                          'Store',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 11.sp,
                              fontFamily: primaryfont),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
