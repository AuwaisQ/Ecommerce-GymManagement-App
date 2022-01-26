import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';

class Reward extends StatefulWidget {
  const Reward({Key? key}) : super(key: key);

  @override
  _RewardState createState() => _RewardState();
}

class _RewardState extends State<Reward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280.h,
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
                      height: 15.h,
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 200),
                      child: Text(
                        'Free Shipping & 60-Day Return over \$150',
                        style: TextStyle(color: Colors.white, fontSize: 14.sp),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 50),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            Icon(
                              Icons.info_outline,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 100),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/coin.png',
                            height: 50,
                            width: 50,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            '50',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 45.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Coin Balance',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 200),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Use Omark Coins to redeem exciting vouchers',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              DelayedDisplay(
                delay: const Duration(milliseconds: 200),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    children: [
                      Text(
                        'Redeem Voucher',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Flipkart
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 400),
                      child: Container(
                        height: 250.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/voucher.png'),
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  'images/flipkart.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Flipkart Gift card \nSubscription',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    '3000 Coins',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  height: 30.h,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.r),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.r,
                                            spreadRadius: 2.r,
                                            color:
                                                Colors.white.withOpacity(0.15))
                                      ]),
                                  child: MaterialButton(
                                    onPressed: () {
                                      showModalBottomSheet(
                                          backgroundColor:
                                              backgroundColor.withOpacity(0.95),
                                          context: context,
                                          enableDrag: true,
                                          isScrollControlled: true,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.vertical(
                                                      top: Radius.circular(
                                                          30.r))),
                                          builder: (BuildContext context) {
                                            return SizedBox(
                                              height: 600.h,
                                              child: buildSheet1(context),
                                            );
                                          });
                                    },
                                    child: Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ///Amzon
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 500),
                      child: Container(
                        height: 250.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/voucher.png'),
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  'images/amazon.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Flipkart Gift card \nSubscription',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    '3000 Coins',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  height: 30.h,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.r),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.r,
                                            spreadRadius: 2.r,
                                            color:
                                                Colors.white.withOpacity(0.15))
                                      ]),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///Myntra
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 600),
                      child: Container(
                        height: 250.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/voucher.png'),
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  'images/myntra.png',
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Text(
                                'Flipkart Gift card \nSubscription',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    '3000 Coins',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  height: 30.h,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.r),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.r,
                                            spreadRadius: 2.r,
                                            color:
                                                Colors.white.withOpacity(0.15))
                                      ]),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    ///Snapdeal
                    DelayedDisplay(
                      delay: const Duration(milliseconds: 700),
                      child: Container(
                        height: 250.h,
                        width: 150.w,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                          image: AssetImage('images/voucher.png'),
                        )),
                        child: Padding(
                          padding: EdgeInsets.only(top: 30.h),
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10.r),
                                child: Image.asset(
                                  'images/snapdeal.png',
                                  height: 55,
                                  width: 100,
                                ),
                              ),
                              Text(
                                'Flipkart Gift card \nSubscription',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.sp,
                                ),
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                    'images/coin.png',
                                    height: 25,
                                    width: 25,
                                  ),
                                  SizedBox(
                                    width: 5.h,
                                  ),
                                  Text(
                                    '3000 Coins',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.sp,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.w),
                                child: Container(
                                  height: 30.h,
                                  width: 150,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.r),
                                      color: Colors.red,
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 5.r,
                                            spreadRadius: 2.r,
                                            color:
                                                Colors.white.withOpacity(0.15))
                                      ]),
                                  child: MaterialButton(
                                    onPressed: () {},
                                    child: Center(
                                      child: Text(
                                        'View Details',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 70.h,
              ),
            ],
          ),
        ),
      ),
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
              height: 50.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: Image.asset(
                      'images/flipkart.png',
                      height: 100,
                      width: 100,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Text(
                'Flat 50% off-Omark 1 Month Pack @\n\$30',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 15.sp),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/coin.png',
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 5.h,
                    ),
                    Text(
                      '3000 Coins',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 26.w),
                child: Row(
                  children: [
                    Text(
                      'Cupon Details',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 27.w),
                child: Text(
                  'This pack is available for Omark customer for only \$50 at flat 50% discount. it allows to Omark premium deatures of downloads, Ad-free and HD quality streaing. Once redeeme using coins, this can not be refunded.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 100),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Container(
                  height: 50.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      color: Colors.red,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 5.r,
                            spreadRadius: 2.r,
                            color: Colors.white.withOpacity(0.1))
                      ]),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        'Redeem Now',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
