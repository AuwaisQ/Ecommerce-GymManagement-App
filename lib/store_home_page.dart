import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/drawer.dart';
import 'package:omark_gym/top_sheet_cart.dart';
import 'package:omark_gym/top_sheet_search.dart';
import 'package:omark_gym/video_player.dart';
import 'package:omark_gym/womens_omark.dart';
import 'package:page_transition/page_transition.dart';
import 'package:video_player/video_player.dart';

class StoreHomePage extends StatefulWidget {
  const StoreHomePage({Key? key}) : super(key: key);

  @override
  _StoreHomePageState createState() => _StoreHomePageState();
}

class _StoreHomePageState extends State<StoreHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: backgroundColor.withOpacity(0.9)),
          child: const AppDrawer()),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: const Icon(
          Icons.ac_unit,
          color: Colors.transparent,
        ),
        actions: const [
          Icon(
            Icons.ac_unit,
            color: Colors.transparent,
          ),
        ],
        toolbarHeight: 90.h,
        flexibleSpace: DelayedDisplay(
          delay: const Duration(milliseconds: 700),
          child: Column(
            children: [
              SizedBox(
                height: 35.h,
              ),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgroundColor,
                ),
                child: Column(
                  children: [
                    Text(
                      'Free Shipping & 60-Day Return over \$150',
                      style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(top: 10.h, right: 15.w, left: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Colors.white,)),
                          Text(
                            'OMARK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    width: 55.w,
                                    child: MaterialButton(
                                      onPressed: () {
                                        topsheetcart(context);
                                      },
                                      child: Image.asset(
                                        'images/shoppingbag.png',
                                        height: 21.h,
                                        width: 21.w,
                                        // fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 25.h, left: 27.w),
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
                                          borderRadius:
                                              BorderRadius.circular(13.r)),
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
                                  onPressed: () {
                                    topsheetsearch(context);
                                  },
                                  icon: Icon(
                                    Icons.search,
                                    color: Colors.white,
                                    size: 30.sp,
                                  )),
                              SizedBox(
                                width: 55.w,
                                child: MaterialButton(
                                  onPressed: () => _scaffoldKey.currentState!
                                      .openEndDrawer(),
                                  child: Image.asset(
                                    'images/menu.png',
                                    height: 20.h,
                                    width: 20.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: DelayedDisplay(
            fadeIn: true,
            delay: const Duration(milliseconds: 1000),
            child: Column(children: [
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.35),
                      )
                    ],
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: const VideoPlayback()),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'ALPHALUX FORCE',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'New styles, new colors, and a whole new irresistible\nsmooth touch',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Container(
                            height: 45.h,
                            width: 160.w,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(35.r),
                              color: Colors.white.withOpacity(0.4),
                            ),
                            child: Center(
                              child: MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          duration:
                                              const Duration(milliseconds: 600),
                                          reverseDuration:
                                              const Duration(milliseconds: 200),
                                          child: const WomensOmark(),
                                          type: PageTransitionType.fade));
                                },
                                child: Text(
                                  'SHOP NOW',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'NEW ARRIVALS',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.r,
                              blurRadius: 4.r,
                              color: Colors.black.withOpacity(0.3),
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'VIEW ALL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CarouselSlider(
                items: <Widget>[
                  ///1st Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/FebWomenRestock_007_1200x.jpg?v=1613595455'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHALUX ASYMMETRICAL BRA',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'FRAUGHT BLUE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///2st Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceCrop_07_1200x.jpg?v=1632278414'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHALUX ASYMMETRICAL BRA',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'FRAUGHT BLUE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///3rd Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/PulseSurgeBra_25_1200x.jpg?v=1629492073'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHALUX ASYMMETRICAL BRA',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'FRAUGHT BLUE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20.h,
                                    width: 60.w,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.r),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'NEW',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 12.sp),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  viewportFraction: 0.75,
                  aspectRatio: 0.75,
                  enableInfiniteScroll: false,
                  initialPage: 0,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),

              ///Women's Shorts
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0667/0133/collections/image_feeb1d36-b0de-4d9d-b845-77043a115938_1400x.jpg?v=1633768076'),
                        fit: BoxFit.fitHeight),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      children: [
                        Spacer(),
                        Row(
                          children: [
                            Text(
                              '  WOMEN\'S \n  SHORTS',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              height: 35,
                              width: 140,
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.4),
                                borderRadius: BorderRadius.circular(35.r),
                              ),
                              child: Center(
                                child: Text(
                                  'SHOP NOW',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://image.clovia.com/media/clovia-images/images/400x600/clovia-picture-snug-fit-active-ankle-length-tights-in-red-255020.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'LAST\nCHANCE',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Shop up to 50% off',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue[100],
                                  borderRadius: BorderRadius.circular(30.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.5),
                                        spreadRadius: 10.r,
                                        blurRadius: 10.r)
                                  ]),
                              child: Center(
                                child: Text(
                                  'SHOP NOW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),

              ///LEGGINGS
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://image.clovia.com/media/clovia-images/images/400x600/clovia-picture-active-printed-t-shirt-in-grey-567831.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              ' WOMEN\'S',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 35.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  color: Colors.yellow.shade800,
                                  borderRadius: BorderRadius.circular(30.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.3),
                                        spreadRadius: 10.r,
                                        blurRadius: 10.r)
                                  ]),
                              child: Center(
                                child: Text(
                                  'LEGGINGS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'BEST SELLER',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      height: 40.h,
                      width: 100.w,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(30.r),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.r,
                              blurRadius: 4.r,
                              color: Colors.black.withOpacity(0.3),
                            )
                          ]),
                      child: Center(
                        child: Text(
                          'VIEW ALL',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              ///2nd Carousel Slider
              CarouselSlider(
                items: <Widget>[
                  ///1st Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/MayOGRevival_31_1200x.jpg?v=1633115580'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHA LEGGING',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DARKEST PINE',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///2nd Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/MayOGRevival_20_1200x.jpg?v=1622868196'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHA LEGGING',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DARKEST GREEN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),

                  ///3rd Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 320.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/MayOGRevival_14_1200x.jpg?v=1622868210'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 100.h,
                        width: 240.w,
                        decoration: BoxDecoration(
                            color: backgroundColor,
                            borderRadius: BorderRadius.circular(15.r),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  offset: const Offset(2, 4),
                                  spreadRadius: 5.r,
                                  blurRadius: 5.r)
                            ]),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 10.w, top: 10.h),
                              child: Row(
                                children: [
                                  Text(
                                    'ALPHA LEGGING',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14.sp),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'DARKEST BLACK',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    height: 20,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(35.r),
                                      color: Colors.white.withOpacity(0.4),
                                    ),
                                    child: Center(
                                      child: Text(
                                        '+6 COLORS',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 7.h,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10.w),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '\$50.00',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  viewportFraction: 0.75,
                  aspectRatio: 0.75,

                  ///This is Height of the Slider
                  enableInfiniteScroll: false,
                  initialPage: 0,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0667/0133/products/AugWebsiteAllOld-264_1200x.jpg?v=1626720713'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              ' LAST\n CHANCE',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.r),
                                  color: Colors.white.withOpacity(0.3)),
                              height: 40,
                              width: 120,
                              child: Center(
                                child: Text(
                                  'SHOP NOW',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0667/0133/products/MenProEliteJacket_14_1200x.jpg?v=1625254743'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'LAST\nCHANCE',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'Shop up to 50% off',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              height: 35.h,
                              width: 140.w,
                              decoration: BoxDecoration(
                                  color: Colors.lightBlue.shade900,
                                  borderRadius: BorderRadius.circular(30.r),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.white.withOpacity(0.3),
                                        spreadRadius: 10.r,
                                        blurRadius: 10.r)
                                  ]),
                              child: Center(
                                child: Text(
                                  'SHOP NOW',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              ///Joggers & Shorts
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 450.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/74/d5/f9/74d5f9a6ae8aea33aa3477c419998731.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              'BOTTOMS',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.r),
                                  color: Colors.orange.withOpacity(0.5)),
                              height: 40,
                              width: 150,
                              child: Center(
                                child: Text(
                                  'SHOP JOGGERS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.r),
                                  color: Colors.red.withOpacity(0.5)),
                              height: 40,
                              width: 140,
                              child: Center(
                                child: Text(
                                  'SHOP SHORT\'S',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'SHOP THE LOOK',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),

              ///3rd Carousel Slider
              CarouselSlider(
                items: <Widget>[
                  ///1st Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 350.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://i.pinimg.com/originals/f5/b9/fb/f5b9fb5ea44b77a9478c1d471b04c890.jpg'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                    ],
                  ),

                  ///2nd Slider
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 350.h,
                        width: 270.w,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 5.0,
                              blurRadius: 20.0,
                              color: Colors.black.withOpacity(0.4),
                            )
                          ],
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://yourtimes.in/wp-content/uploads/2021/06/active-fitness-trainer-woman-tights-style-80s-demonstrates-exercise-hands-fit-ball_197531-16589.jpg'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                    ],
                  ),
                ],
                carouselController: buttonCarouselController,
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  aspectRatio: 0.9,

                  ///This is Height of the Slider
                  enableInfiniteScroll: false,
                  initialPage: 0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 350.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://fasbest.com/wp-content/uploads/2017/05/Cool-Mens-Gym-And-Workout-Outfits-Style-8.jpg'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'FOR HIM ',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.r),
                                  color: Colors.black.withOpacity(0.5)),
                              height: 40,
                              width: 140,
                              child: Center(
                                child: Text(
                                  'SHOP MENS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  height: 350.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 20.0,
                        color: Colors.black.withOpacity(0.4),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://th.bing.com/th/id/R.95caa9af6ed7350ed25c5377ab1ee4cf?rik=xE372BsT7noq8Q&riu=http%3a%2f%2fwww.hdwallpapers.in%2fdownload%2fwomen_lady_fitness_workout-2048x2048.jpg&ehk=9LpgGRECtgCbHfTcdcTLZGcpjyf3iJ0LlblHL73Ncig%3d&risl=&pid=ImgRaw&r=0'),
                        fit: BoxFit.cover),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            Text(
                              ' FOR HER',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35.r),
                                  color: Colors.orange.withOpacity(0.5)),
                              height: 40,
                              width: 160,
                              child: Center(
                                child: Text(
                                  'SHOP WOMENS',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
