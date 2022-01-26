import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class Membership extends StatelessWidget {
  const Membership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            'images/back.png',
            color: Colors.white,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const MembershipPlan(),
              SizedBox(
                height: 15.w,
              ),
              const MembershipPlan(),
              SizedBox(
                height: 15.w,
              ),
              const MembershipPlan(),
            ],
          ),
        ),
      ),
    );
  }
}

class MembershipPlan extends StatelessWidget {
  const MembershipPlan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.r),
          boxShadow: [
            BoxShadow(
              spreadRadius: 5.r,
              blurRadius: 5.r,
              color: Colors.black.withOpacity(0.2),
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Omark Premium MemberShip \n (12 Months)',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: primaryfont,
                      fontSize: 17.sp,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Get Benifits Upto Rs.10,000 on OMARK',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Get free personal training worth 19,990',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Get Yearly membership of  Rs. 11,999',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Restrooms',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Locker Facilities',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Shower Facilities',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.fiber_manual_record,
                        color: Colors.white,
                        size: 12,
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Text(
                        'Private Steam Bath',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Rs.24,999',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: primaryfont,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    height: 40,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Text(
                        'Buy Now',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: primaryfont,
                          fontSize: 13.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
