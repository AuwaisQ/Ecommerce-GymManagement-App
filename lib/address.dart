import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/add_address.dart';
import 'package:omark_gym/constants.dart';

class Address extends StatefulWidget {
  const Address({Key? key}) : super(key: key);

  @override
  _AddressState createState() => _AddressState();
}

class _AddressState extends State<Address> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundColor,
        floatingActionButton: Container(
          height: 50.h,
          width: 50.w,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.8),
            borderRadius: BorderRadius.circular(50.r),
          ),
          child: Center(
            child: Text(
              'OK',
              style: TextStyle(
                  color: Colors.black, fontSize: 20.sp, fontFamily: 'Poppins'),
            ),
          ),
        ),
        body: SafeArea(
          child: Column(children: [
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
                              builder: (context) => AddressPage()));
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
                          Icons.add,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Text(
                      'Saved Address',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Container(
                                  height: 20.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius:
                                          BorderRadius.circular(50.r)),
                                  child: Center(
                                    child: Text(
                                      'Home',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9.sp,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.edit,
                                        size: 18,
                                        color: Colors.red,
                                      )),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 18,
                                      color: Colors.red,
                                    )),
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Akshya Nagar 1st Block 1st Cross,\nRammurthy nagar,Bangalore-560016',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          '+91 0000 0000 00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Divider(
                  thickness: 1,
                  color: Colors.grey,
                ),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 400),
              slidingBeginOffset: const Offset(0.35, 0.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Row(
                              children: [
                                Text(
                                  'User Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24.sp,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.w,
                                ),
                                Container(
                                  height: 20.h,
                                  width: 45.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.3),
                                      borderRadius:
                                          BorderRadius.circular(50.r)),
                                  child: Center(
                                    child: Text(
                                      'Office',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 9.sp,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 70.w,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.edit,
                                        size: 18,
                                        color: Colors.red,
                                      )),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.delete,
                                      size: 18,
                                      color: Colors.red,
                                    )),
                              ],
                            )
                          ],
                        ),
                        Text(
                          'Akshya Nagar 1st Block 1st Cross,\nRammurthy nagar,Bangalore-560016',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          '+91 0000 0000 00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ));
  }
}
