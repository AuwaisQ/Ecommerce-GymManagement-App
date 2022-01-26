import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/dropdown_list.dart';
import 'package:omark_gym/invite_and_earn.dart';
import 'package:omark_gym/my_account.dart.dart';
import 'package:omark_gym/my_orders.dart';
import 'package:omark_gym/subscription_plan.dart';
import 'package:page_transition/page_transition.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250.w,
      child: Drawer(
        elevation: 16.0,
        child: ListView(
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyAccount()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 70.r,
                        child: CircleAvatar(
                            radius: 65.r,
                            backgroundImage: const NetworkImage(
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzf0VTz2LcrRqAbFF3BfZEonQ6QJHX5r4D6Q&usqp=CAU')),
                      ),
                    ),
                  ),
                  Text(
                    'USER NAME',
                    style: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.white,
                        letterSpacing: 5.0),
                  )
                ],
              ),
            ),

            //My Orders
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                      Navigator.pop(context);
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
                          Icons.inbox,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Subscription Plan
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SubscriptionPlan()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subscription Plan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.receipt_long,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Invite& earn
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => InviteAndEarn()));
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
                          Icons.account_balance_wallet_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Shipping Info
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyAccount()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping Info',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.local_shipping_outlined,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            //About Us
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                          'About Us',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.business,
                          color: Colors.white,
                          size: 30,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //Help Center
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 60.h,
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
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyOrders()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Help Center',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                          ),
                        ),
                        const Icon(
                          Icons.help,
                          color: Colors.white,
                          size: 30,
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
