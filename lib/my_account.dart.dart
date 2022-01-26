import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/account_edit.dart';
import 'package:omark_gym/address.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/drawer.dart';
import 'package:omark_gym/invite_and_earn.dart';
import 'package:omark_gym/my_orders.dart';
import 'package:omark_gym/subscription_plan.dart';
import 'package:omark_gym/top_sheet_cart.dart';
import 'package:omark_gym/top_sheet_search.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
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
        child: Column(
          children: [
            SizedBox(
              height: 5.h,
            ),
            Container(
              height: 220.h,
              width: double.infinity,
              decoration: BoxDecoration(
                color: backgroundColor,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10.r,
                      spreadRadius: 2.r,
                      color: Colors.black.withOpacity(0.5),
                      offset: const Offset(0.0, 5.0))
                ],
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.r),
                  bottomRight: Radius.circular(30.r),
                ),
              ),
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 300),
                slidingBeginOffset: const Offset(0.35, 0.0),
                child: Column(
                  children: [
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
                                    padding:
                                        EdgeInsets.only(top: 27.h, left: 27.w),
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
                    Row(
                      children: [
                        Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: CircleAvatar(
                                  radius: 50.r,
                                  backgroundImage: const NetworkImage(
                                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzf0VTz2LcrRqAbFF3BfZEonQ6QJHX5r4D6Q&usqp=CAU')),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 85.h, left: 70.w),
                              child: Container(
                                height: 35.h,
                                width: 35.w,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        blurRadius: 5.r,
                                        color: Colors.white38,
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(40.r)),
                                child: IconButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const EditAccount()));
                                    },
                                    icon: const Icon(
                                      Icons.edit,
                                      size: 20,
                                      color: Colors.red,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'User Name',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.sp,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              'Username@gmail.com',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 16.sp,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(
                              '+91 0000 0000 00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 300),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(1.0, 5.0))
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Address()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Add Address',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(1.0, 5.0))
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyOrders()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'My Orders',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 500),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(1.0, 5.0))
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SubscriptionPlan()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subscriptions',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 600),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(1.0, 5.0))
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const InviteAndEarn()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Invite & Earn',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Container(
                  height: 80.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(15.r),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 1.r,
                          color: Colors.black.withOpacity(0.4),
                          offset: const Offset(1.0, 5.0))
                    ],
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Support',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
