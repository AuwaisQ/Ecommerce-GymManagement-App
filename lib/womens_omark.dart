import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/single_product_details.dart';
import 'package:omark_gym/top_sheet_cart.dart';
import 'package:omark_gym/top_sheet_search.dart';
import 'package:page_transition/page_transition.dart';

class WomensOmark extends StatefulWidget {
  const WomensOmark({Key? key}) : super(key: key);

  @override
  _WomensOmarkState createState() => _WomensOmarkState();
}

class _WomensOmarkState extends State<WomensOmark> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        height: 45.h,
        width: 110.w,
        decoration: BoxDecoration(
          color: backgroundColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: MaterialButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: backgroundColor.withOpacity(0.95),
                context: context,
                enableDrag: true,
                isScrollControlled: true,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(25.r))),
                builder: (BuildContext context) {
                  return SizedBox(
                    height: 430.h,
                    child: buildSheet1(context),
                  );
                });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Filter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.tune,
                color: Colors.white,
                size: 22,
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: const Icon(
          Icons.ac_unit,
          color: Colors.transparent,
        ),
        toolbarHeight: 90.h,
        flexibleSpace: DelayedDisplay(
          delay: const Duration(milliseconds: 500),
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
                                        height: 20.h,
                                        width: 20.w,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 25.h, left: 27.w),
                                    child: Container(
                                      height: 22.h,
                                      width: 22.w,
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
                                                fontSize: 13.sp,
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
                                  onPressed: () {},
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
      body: SingleChildScrollView(
        child: DelayedDisplay(
          delay: const Duration(milliseconds: 700),
          child: Column(
            children: [
              ///Women's Omark
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                  height: 170.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 5.0,
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.35),
                      )
                    ],
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0667/0133/collections/image_a719ae14-370a-4f20-a725-73981d92592d_1400x.jpg?v=1633781159'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '  WOMEN\'S\n  OMARK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '     70 Prodcut\'s',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              ///1st Products Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ///1st Prodycts
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_31_1200x.jpg?v=1632291740'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                PageTransition(
                                    duration: const Duration(milliseconds: 900),
                                    reverseDuration:
                                        const Duration(milliseconds: 200),
                                    child: const SingleProductDetails(),
                                    type: PageTransitionType.fade));
                          },
                        ),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails(),
                    ],
                  ),
                  Column(
                    children: [
                      ///Products
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceCrop_07_1200x.jpg?v=1632278414'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails(),
                    ],
                  ),
                ],
              ),

              SizedBox(
                height: 10.h,
              ),

              ///2  st Products Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ///1st Prodycts
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/4U8A3763_1200x.jpg?v=1632275470'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails(),
                    ],
                  ),
                  Column(
                    children: [
                      ///Products
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceLeggins27__07_1200x.jpg?v=1632147694'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              ///3  st Products Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ///1st Prodycts
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceLeggins30__25_1200x.jpg?v=1632143021'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails2(),
                    ],
                  ),
                  Column(
                    children: [
                      ///Products
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceLeggins30__13_1200x.jpg?v=1632142578'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails2(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              ///3  st Products Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ///1st Prodycts
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_13_1200x.jpg?v=1632291811'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails2(),
                    ],
                  ),
                  Column(
                    children: [
                      ///Products
                      Container(
                        margin: EdgeInsets.only(top: 25.h),
                        height: 220.h,
                        width: 170.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.r),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceCrop_19_1200x.jpg?v=1632291691'),
                              fit: BoxFit.cover),
                        ),
                        child: MaterialButton(onPressed: () {}),
                      ),
                      SizedBox(
                        height: 7.h,
                      ),
                      ProductsDetails2(),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container ProductsDetails() {
    return Container(
      height: 90.h,
      width: 170.w,
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
                  'OMARK ASYMMETRICAL',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FRAUGHT BLUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                  height: 18.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(color: Colors.black, fontSize: 12.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container ProductsDetails2() {
    return Container(
      height: 100.h,
      width: 170.w,
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
                  'OMARK FORCE LEGINGS',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 10.sp),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'FRAUGHT BLUE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      '\$50.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.pink.shade300,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '\$50.00',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          color: Colors.white,
                          fontSize: 11.sp,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  height: 18.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      'NEW',
                      style: TextStyle(color: Colors.white, fontSize: 12.sp),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ///Bottom Sheet 1
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  Widget buildSheet1(context) => Column(
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
            delay: const Duration(milliseconds: 100),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26.w),
              child: Row(
                children: [
                  Text(
                    'PRICE',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          SliderTheme(
            data: SliderTheme.of(context).copyWith(
              trackShape: const RectangularSliderTrackShape(),
              trackHeight: 5.0,
              thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 9.0),
              overlayShape: const RoundSliderOverlayShape(overlayRadius: 18.0),
              valueIndicatorShape: const RoundSliderOverlayShape(),
              valueIndicatorColor: const Color(0xffF5F5F5),
              valueIndicatorTextStyle:
                  const TextStyle(color: Colors.white, fontSize: 14.0),
              rangeThumbShape: const RoundRangeSliderThumbShape(),
              rangeValueIndicatorShape:
                  const PaddleRangeSliderValueIndicatorShape(),
            ),
            child: SizedBox(
              height: 25.h,
              width: 340.w,
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 100),
                child: RangeSlider(
                  inactiveColor: Colors.grey,
                  activeColor: Colors.grey,
                  values: _currentRangeValues,
                  min: 0,
                  max: 100,
                  divisions: 50,
                  labels: RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),
                  ),
                  onChanged: (RangeValues values) {
                    setState(() {
                      _currentRangeValues = values;
                    });
                  },
                ),
              ),
            ),
          ),
          const DelayedDisplay(
            delay: Duration(milliseconds: 100),
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: Divider(
                thickness: 1,
                color: Colors.grey,
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
                    'SORTED BY',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          Column(
            children: [
              DelayedDisplay(
                delay: const Duration(milliseconds: 150),
                child: Container(
                  height: 50.h,
                  width: 100.w,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30.r),
                  ),
                  child: Center(
                    child: Text(
                      'Featured',
                      style: TextStyle(color: Colors.black, fontSize: 17.sp),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              DelayedDisplay(
                delay: const Duration(milliseconds: 200),
                child: Text(
                  'Price: Low to High',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              DelayedDisplay(
                delay: const Duration(milliseconds: 250),
                child: Text(
                  'Price: High to Low',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              DelayedDisplay(
                delay: const Duration(milliseconds: 300),
                child: Text(
                  'Price: Old to New',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              DelayedDisplay(
                delay: const Duration(milliseconds: 350),
                child: Text(
                  'Price:  New to Old',
                  style: TextStyle(color: Colors.white, fontSize: 15.sp),
                ),
              ),
            ],
          )
        ],
      );
}
