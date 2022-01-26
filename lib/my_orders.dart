import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/drawer.dart';
import 'package:omark_gym/gym_plans.dart';
import 'package:omark_gym/top_sheet_cart.dart';
import 'package:omark_gym/top_sheet_search.dart';
import 'constants.dart';

class MyOrders extends StatelessWidget {
  MyOrders({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          endDrawer: Theme(
              data: Theme.of(context)
                  .copyWith(canvasColor: backgroundColor.withOpacity(0.9)),
              child: const AppDrawer()),
          backgroundColor: backgroundColor,
          appBar: AppBar(
            leading: Icon(
              Icons.ac_unit,
              color: Colors.transparent,
            ),
            actions: [
              Icon(
                Icons.ac_unit,
                color: Colors.transparent,
              ),
            ],
            toolbarHeight: 100.h,
            elevation: 0,
            backgroundColor: Colors.transparent,
            flexibleSpace: Column(
              children: [
                SizedBox(height: 45.h),
                Text(
                  'Free Shipping & 60-Day Return over \$150',
                  style: TextStyle(color: Colors.grey, fontSize: 11.sp),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    right: 15.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 5,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 25.sp,
                            )),
                      ),
                      Text(
                        'My Account',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 23.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Stack(
                            children: [
                              SizedBox(
                                width: 53.w,
                                child: MaterialButton(
                                  onPressed: () {
                                    topsheetcart(context);
                                  },
                                  child: Image.asset(
                                    'images/shoppingbag.png',
                                    height: 23.h,
                                    width: 20.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 27.h, left: 27.w),
                                child: Container(
                                  height: 16.h,
                                  width: 16.w,
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
                                            fontSize: 8.sp,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 33.w,
                            child: IconButton(
                                onPressed: () {
                                  topsheetsearch(context);
                                },
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.white,
                                  size: 30.sp,
                                )),
                          ),
                          SizedBox(
                            width: 50.w,
                            child: MaterialButton(
                              onPressed: () =>
                                  _scaffoldKey.currentState!.openEndDrawer(),
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
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              tabs: [
                Tab(
                  child: Text(
                    'Pending Orders',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: primaryfont,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Completed Orders',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ///Pending Orders
              SingleChildScrollView(
                child: Column(
                  children: [
                    Items(),
                    Items(),
                    Items(),
                  ],
                ),
              ),

              ///Completed Orders
              SingleChildScrollView(
                child: Column(
                  children: [
                    Items(),
                    Items(),
                    Items(),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}

///Item Detail's
class Items extends StatelessWidget {
  const Items({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 130.h,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 5.r,
              spreadRadius: 5.r,
              color: Colors.black.withOpacity(0.3),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: Image.network(
                'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_31_1200x.jpg?v=1632291740',
                fit: BoxFit.cover,
                height: 110.h,
                width: 75.w,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OMARK ACYMETRICAL CROP',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  'STORM GREEN',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Text(
                  '02-12-21',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 160.w),
                  child: Text(
                    '\$ 33.60',
                    style: TextStyle(
                        color: Colors.pink.shade300,
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
