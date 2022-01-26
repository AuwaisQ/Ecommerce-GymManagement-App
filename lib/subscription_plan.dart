import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/video_player.dart';
import 'package:video_player/video_player.dart';

class SubscriptionPlan extends StatelessWidget {
  const SubscriptionPlan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        leading: Padding(
          padding: EdgeInsets.only(top: 28.h),
          child: DelayedDisplay(
            delay: const Duration(milliseconds: 300),
            slidingBeginOffset: const Offset(0.35, 0.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ),
        toolbarHeight: 80.h,
        flexibleSpace: DelayedDisplay(
          delay: const Duration(milliseconds: 300),
          slidingBeginOffset: const Offset(0.35, 0.0),
          child: Column(
            children: [
              SizedBox(
                height: 40.h,
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
                          SizedBox(
                            width: 10.w,
                            child: IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back,
                                  color: Colors.transparent,
                                  size: 25,
                                )),
                          ),
                          Text(
                            'OMARK',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30.sp,
                                fontWeight: FontWeight.bold),
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
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                DelayedDisplay(
                  delay: const Duration(milliseconds: 400),
                  slidingBeginOffset: const Offset(0.35, 0.0),
                  child: Text(
                    'Subscription Plan',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          DelayedDisplay(
            delay: const Duration(milliseconds: 500),
            slidingBeginOffset: const Offset(0.35, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 450.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(15.r),
                  boxShadow: [
                    BoxShadow(
                      spreadRadius: 5.0,
                      blurRadius: 5.0,
                      color: Colors.black.withOpacity(0.4),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15.r),
                      child: Image.network(
                        'https://bojestveni.com/wp-content/uploads/2016/01/polzi-vredi-ot-step-aerobikata-800x445.jpg',
                        fit: BoxFit.cover,
                        height: 230.h,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            'THE WELLNESS',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 23.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Membership: ',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' Premium',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Container(
                            height: 20.h,
                            width: 1.w,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              Text(
                                'Validity: ',
                                style: TextStyle(
                                    color: Colors.white.withOpacity(0.8),
                                    fontSize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                ' 6 months',
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
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      child: Row(
                        children: [
                          Text(
                            'Time Slot: ',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' Morning 6:00PM to 8:00PM',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15.w,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'Remaining Time: ',
                            style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' 3 Weeks',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13.sp,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 15.w, vertical: 10.h),
                      child: Text(
                        'Akshya Nagar 1st Block 1st Cross, Rammurthy nagar, Bangalore-560016',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.sp,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
