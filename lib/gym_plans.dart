import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/membership.dart';

class GymPlans extends StatelessWidget {
  const GymPlans({Key? key}) : super(key: key);

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
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 400.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.r),
                  boxShadow: [BoxShadow(blurRadius: 5.r, color: Colors.black)],
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://images.theconversation.com/files/339674/original/file-20200604-130929-iutdtd.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop'),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                'Omark Gym',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: primaryfont,
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Ujjain, Madhya Pradesh',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: primaryfont,
                  fontSize: 13.sp,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/parking.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'Parking',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/locker.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'Locker',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/shower.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'shower',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/cctv.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'CCTV',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'images/parking.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'Parking',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/locker.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'Locker',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/shower.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'shower',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'images/cctv.png',
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5.h,
                      ),
                      const Text(
                        'CCTV',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Container(
                    height: 40.h,
                    width: 160.w,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(40.r),
                    ),
                    child: Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Membership()));
                        },
                        child: const Text('Membership',
                            style: TextStyle(
                                color: Colors.black, fontFamily: primaryfont)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                    width: 160.w,
                    child: const Center(
                      child: Text(
                        'Training',
                        style: TextStyle(
                            color: Colors.white, fontFamily: primaryfont),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: const DecorationImage(
                      image: AssetImage('images/voiletrectangle.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Individual',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: primaryfont,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'For 1 month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: primaryfont,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '1 month free with 6 months \n of premium',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Membership()));
                            },
                            child: const Text('VIEW PLANS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: primaryfont,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Text(
                        'Terms & Conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: const DecorationImage(
                      image: AssetImage('images/greenrectangle.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Family Membership',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: primaryfont,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'For 1 month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: primaryfont,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '1 month free with 6 months \n of premium',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Membership()));
                            },
                            child: const Text('VIEW PLANS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: primaryfont,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Text(
                        'Terms & Conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Container(
                height: 230.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  image: const DecorationImage(
                      image: AssetImage('images/pinkrectangle.png'),
                      fit: BoxFit.cover),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Combo',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.sp,
                                fontFamily: primaryfont,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'For 1 month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: primaryfont,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '1 month free with 6 months \n of premium',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                      Container(
                        height: 40.h,
                        width: 160.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40.r),
                        ),
                        child: Center(
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Membership()));
                            },
                            child: const Text('VIEW PLANS',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: primaryfont,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                      Text(
                        'Terms & Conditions',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontFamily: primaryfont,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
