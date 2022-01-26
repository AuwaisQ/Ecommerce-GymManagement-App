import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';

class EditAccount extends StatefulWidget {
  const EditAccount({Key? key}) : super(key: key);

  @override
  EditAccountState createState() => EditAccountState();
}

class EditAccountState extends State<EditAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
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
        toolbarHeight: 80.h,
        flexibleSpace: DelayedDisplay(
          delay: const Duration(milliseconds: 200),
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
                      padding: EdgeInsets.only(
                        top: 10.h,
                        right: 15.w,
                      ),
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
                                  color: Colors.white,
                                  size: 25,
                                )),
                          ),
                          Text(
                            'MY ACCOUNT',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25.sp,
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
          child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: CircleAvatar(
                          radius: 70.r,
                          backgroundImage: const NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzf0VTz2LcrRqAbFF3BfZEonQ6QJHX5r4D6Q&usqp=CAU')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 120.h, left: 100.w),
                      child: Container(
                        height: 40.h,
                        width: 40.w,
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
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    'Full Name',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 200),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const AccountTextField(txt: 'name'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    'Email',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 200),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const AccountTextField(txt: 'email'),
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 200),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: const AccountTextField(txt: 'number'),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 200),
              child: Padding(
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
                        'Login',
                        style: TextStyle(
                            color: Colors.black,
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
      )),
    );
  }
}

///Text Field
class AccountTextField extends StatelessWidget {
  final String txt;
  const AccountTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        obscureText: false,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(bottom: 4.h, left: 20.w),
            border: InputBorder.none,
            hintText: txt,
            hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15.sp)),
      ),
    );
  }
}
