import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/drawer.dart';

class InviteAndEarn extends StatefulWidget {
  const InviteAndEarn({Key? key}) : super(key: key);

  @override
  _InviteAndEarnState createState() => _InviteAndEarnState();
}

class _InviteAndEarnState extends State<InviteAndEarn> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: backgroundColor.withOpacity(0.9)),
          child: const AppDrawer()),
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 480.h,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: const [
                    0.01,
                    1.2,
                  ],
                  colors: [
                    Colors.pink.withOpacity(0.8),
                    Colors.blue.withOpacity(0.8),
                  ],
                ),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r)),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 5.h,
                  ),
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 200),
                    slidingBeginOffset: const Offset(0.35, 0.0),
                    child: Text(
                      'Free Shipping & 60-Day Return over \$150',
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 200),
                    slidingBeginOffset: const Offset(0.35, 0.0),
                    child: Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30.sp,
                            color: Colors.white,
                          ),
                        ),
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 200),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Text(
                            'Invite & Earn',
                            style:
                                TextStyle(color: Colors.white, fontSize: 20.sp),
                          ),
                        ),
                        SizedBox(
                          width: 35.w,
                        ),
                        Stack(
                          children: [
                            SizedBox(
                              width: 55.w,
                              child: MaterialButton(
                                onPressed: () {},
                                child: Image.asset(
                                  'images/shoppingbag.png',
                                  height: 25.h,
                                  width: 25.w,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 25.h, left: 27.w),
                              child: Container(
                                height: 18.h,
                                width: 18.w,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.r,
                                        color: Colors.white38,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(13.r)),
                                child: Center(
                                  child: Text('2',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 10.sp,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 33.sp,
                            )),
                        SizedBox(
                          width: 55.w,
                          child: MaterialButton(
                            onPressed: () =>
                                _scaffoldKey.currentState!.openEndDrawer(),
                            child: Image.asset(
                              'images/menu.png',
                              height: 21.h,
                              width: 21.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 300),
                    slidingBeginOffset: const Offset(0.35, 0.0),
                    child: SizedBox(
                      height: 320.h,
                      width: double.infinity,
                      child: const AnimatedImage(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 350),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Text(
                'Invite your friends and get\n& 300 each',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 23.sp),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Text(
                'Share the code below or ask them to enter\nit during they signup. Earn when your\nfriend signs up on our app.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: DottedBorder(
                  color: Colors.grey,
                  strokeWidth: 1.5,
                  strokeCap: StrokeCap.round,
                  dashPattern: const [6, 6],
                  child: SizedBox(
                      height: 50.h,
                      width: double.infinity,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('YDV6E15',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 23.sp)),
                            Row(
                              children: [
                                SizedBox(
                                  width: 35.w,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.copy,
                                        color: Colors.pink,
                                      )),
                                ),
                                Text('copy Code',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 14.sp)),
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 50.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.r),
                    color: Colors.pink.shade400,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 2.r,
                          color: Colors.black.withOpacity(0.3))
                    ]),
                child: MaterialButton(
                  onPressed: () {
                    showModalBottomSheet(
                        backgroundColor: backgroundColor.withOpacity(0.95),
                        context: context,
                        enableDrag: true,
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(30.r))),
                        builder: (BuildContext context) {
                          return SizedBox(
                            height: 200.h,
                            child: buildSheet1(context),
                          );
                        });
                  },
                  child: Center(
                    child: Text(
                      'Share',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }

  ///Bottom Sheet 1
  Widget buildSheet1(context) => SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 50.w,
                  height: 4.h,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30.r)),
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 200),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Text(
                'Share Referral Code',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.sp,
                ),
              ),
            ),
            CarouselSlider(
                items: <Widget>[
                  ///1Row
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///WhatsApp
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 300),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/whatsapp.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///Gmail
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 400),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/gmail.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///Youtube
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 500),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/youtube.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///Instagram
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 600),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/instagram.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),
                      ],
                    ),
                  ),

                  ///2nd Row
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///Amazon
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 300),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/amazon.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///Snapchat
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 400),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/snapchat.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///telegram
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 500),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/telegram.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),

                        ///faceboook
                        DelayedDisplay(
                          delay: const Duration(milliseconds: 600),
                          slidingBeginOffset: const Offset(0.35, 0.0),
                          child: Container(
                              height: 70.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5.r,
                                      spreadRadius: 5.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                borderRadius: BorderRadius.circular(100.r),
                              ),
                              child: MaterialButton(
                                onPressed: () {},
                                child: Center(
                                    child: Image.asset(
                                  'images/facebook.png',
                                  height: 50.h,
                                  width: 50.w,
                                )),
                              )),
                        ),
                      ],
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: 150.h,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                ))
          ],
        ),
      );
}

class AnimatedImage extends StatefulWidget {
  const AnimatedImage({Key? key}) : super(key: key);

  @override
  _AnimatedImageState createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 2),
  )..repeat(reverse: true);
  late final Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(_controller);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset('images/Invite&earn.png'),
    );
  }
}
