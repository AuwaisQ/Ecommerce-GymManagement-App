// ignore_for_file: non_constant_identifier_names
import 'package:carousel_slider/carousel_slider.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/drawer.dart';

class SingleProductDetails extends StatefulWidget {
  const SingleProductDetails({Key? key}) : super(key: key);

  @override
  _SingleProductDetailsState createState() => _SingleProductDetailsState();
}

class _SingleProductDetailsState extends State<SingleProductDetails> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
    CarouselController buttonCarouselController = CarouselController();
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: backgroundColor.withOpacity(0.9)),
          child: const AppDrawer()),
      backgroundColor: backgroundColor,

      ///Add To bag Button
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 30.w),
        height: 55.h,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.7),
          borderRadius: BorderRadius.circular(50.r),
        ),
        child: MaterialButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Add To Bad',
                style: TextStyle(
                    color: backgroundColor.withOpacity(0.7),
                    fontSize: 25.sp,
                    fontFamily: 'Poppins'),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.tune,
                color: backgroundColor.withOpacity(0.7),
                size: 25,
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
        actions: const [
          Icon(
            Icons.ac_unit,
            color: Colors.transparent,
          ),
        ],
        toolbarHeight: 90.h,
        flexibleSpace: DelayedDisplay(
          delay: const Duration(milliseconds: 100),
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
                                  onPressed: () {},
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
          child: Stack(
        children: [
          DelayedDisplay(
            delay: const Duration(milliseconds: 100),
            slidingBeginOffset: const Offset(-0.35, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 455.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_31_1200x.jpg?v=1632291740'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 47.h,
                        width: 45.w,
                        decoration: BoxDecoration(
                          color: backgroundColor.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(70.r),
                        ),
                        child: Center(
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 25,
                                  color: Colors.white,
                                ))),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          DelayedDisplay(
            delay: const Duration(milliseconds: 100),
            child: DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.25,
              maxChildSize: 0.5,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                  ),
                  child: ListView(
                    controller: scrollController,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 150.w),
                        child: Container(
                          height: 5.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(50.r)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ProductsDetails(),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          children: [
                            Text(
                              '8 Colours',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: SizedBox(
                          height: 210.h,
                          width: double.infinity,
                          child: Column(
                            children: [
                              const ColorsRow(),
                              SizedBox(
                                height: 10.h,
                              ),
                              const ColorsRow(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'SELECT A SIZE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              height: 30.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(20.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 5.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'SIZE GUID',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12.sp),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 20.h, horizontal: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'XXS',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'XS',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'S',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'M',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'L',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
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
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'XL',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'XXL',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 17.sp,
                                      fontWeight: FontWeight.bold,
                                      decoration: TextDecoration.lineThrough),
                                ),
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 190.w,
                              decoration: BoxDecoration(
                                color: backgroundColor,
                                borderRadius: BorderRadius.circular(17.r),
                                boxShadow: [
                                  BoxShadow(
                                    spreadRadius: 1.0,
                                    blurRadius: 5.0,
                                    color: Colors.black.withOpacity(0.4),
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Don\'t See Your Size ?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Container(
                            height: 350.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'DISCRIPTION',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp),
                                      ),
                                      const Icon(
                                        Icons.close,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15.w, vertical: 10.h),
                                  child: Text(
                                    'Buttery-soft with a double brushed finish on the inside as well as the outside, this is our most comfortable athletic fabric. The fibers are exceptionally strong and elastic, giving the lightweight fabric high resilience and an exceptionally smooth hand-feel. Delivers physique enhancing, confidence inducing seam lines that masterfully accentuates curves and feels like a second skin. Classic Alphalete Alphalux logo in top-of-the-line, raised silicone branding is featured in tonal colors. Alphalux bras offer medium support in an uplifting design while Alphalux bottoms give high-waisted coverage in a form-fitting style.',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12.sp),
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Container(
                            height: 50.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1.0,
                                  blurRadius: 5.0,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'HIGHLIGHTS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Container(
                            height: 50.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1.0,
                                  blurRadius: 5.0,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'FIT SUGGESTION',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 15.w, vertical: 10.h),
                        child: Container(
                            height: 50.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  spreadRadius: 1.0,
                                  blurRadius: 5.0,
                                  color: Colors.black.withOpacity(0.4),
                                )
                              ],
                              color: backgroundColor,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'MATERIALS AND WASHING DIRECTIONS',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15.sp),
                                      ),
                                      const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 20,
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Divider(
                          thickness: 2,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.w),
                        child: Row(
                          children: [
                            Text(
                              'YOU MAY ALSO LIKE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.bold),
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
                                height: 230.h,
                                width: 160.w,
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
                                height: 5.h,
                              ),
                              Container(
                                height: 75.h,
                                width: 160.w,
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
                                      padding: EdgeInsets.only(
                                          left: 10.w, top: 10.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            'ALPHALUX ASYMMETRICAL BRA',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            height: 15,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35.r),
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+6 COLORS',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 7.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$50.00',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 15.h,
                                            width: 60.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'NEW',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp),
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
                                height: 230.h,
                                width: 160.w,
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
                                height: 5.h,
                              ),
                              Container(
                                height: 75.h,
                                width: 160.w,
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
                                      padding: EdgeInsets.only(
                                          left: 10.w, top: 10.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            'ALPHALUX ASYMMETRICAL BRA',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            height: 15,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35.r),
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+6 COLORS',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 7.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$50.00',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 15.h,
                                            width: 60.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'NEW',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp),
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
                                height: 230.h,
                                width: 160.w,
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
                                height: 5.h,
                              ),
                              Container(
                                height: 75.h,
                                width: 160.w,
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
                                      padding: EdgeInsets.only(
                                          left: 10.w, top: 10.h),
                                      child: Row(
                                        children: [
                                          Text(
                                            'ALPHALUX ASYMMETRICAL BRA',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 10.sp),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                            height: 15,
                                            width: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(35.r),
                                              color:
                                                  Colors.white.withOpacity(0.4),
                                            ),
                                            child: Center(
                                              child: Text(
                                                '+6 COLORS',
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 7.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5.h,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10.w),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            '\$50.00',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            height: 15.h,
                                            width: 0.w,
                                            decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20.r),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'NEW',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 10.sp),
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

                        ///Carousel Property
                        carouselController: buttonCarouselController,
                        options: CarouselOptions(
                          viewportFraction: 0.6,
                          aspectRatio: 1,
                          enableInfiniteScroll: true,
                          initialPage: 1,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.w),
                        child: Container(
                          height: 60.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: Colors.grey,
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 5.r,
                                    spreadRadius: 2.r,
                                    color: Colors.black.withOpacity(0.3))
                              ]),
                          child: MaterialButton(
                            onPressed: () {},
                            child: Center(
                              child: Text(
                                'ADD TO BAG+',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      )),
    );
  }

  Container ProductsDetails() {
    return Container(
      height: 150.h,
      width: double.infinity,
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
            padding: EdgeInsets.only(left: 10.w, top: 10.h, right: 10.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'OMARK ASYMMETRICAL',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.sp),
                ),
                Text(
                  '\$50.00',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.pink.shade300,
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold),
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
                  'Women\'s Medium-impact Luxury Sports Suit',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,
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
          ),
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Row(
              children: [
                Text(
                  'STORM GREY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                Container(
                  height: 18.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade300,
                    borderRadius: BorderRadius.circular(20.r),
                  ),
                  child: Center(
                    child: Text(
                      '-30%',
                      style: TextStyle(color: Colors.white, fontSize: 13.sp),
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
}

class ColorsRow extends StatelessWidget {
  const ColorsRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 95.h,
          width: 75.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_31_1200x.jpg?v=1632291740'),
                fit: BoxFit.cover),
          ),
          child: MaterialButton(
            onPressed: () {},
          ),
        ),
        Container(
          height: 95.h,
          width: 75.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_07_1200x.jpg?v=1632291722'),
                fit: BoxFit.cover),
          ),
          child: MaterialButton(
            onPressed: () {},
          ),
        ),
        Container(
          height: 95.h,
          width: 75.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_13_1200x.jpg?v=1632291811'),
                fit: BoxFit.cover),
          ),
          child: MaterialButton(
            onPressed: () {},
          ),
        ),
        Container(
          height: 95.h,
          width: 75.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.r),
            image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_19_1200x.jpg?v=1632291736'),
                fit: BoxFit.cover),
          ),
          child: MaterialButton(
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
