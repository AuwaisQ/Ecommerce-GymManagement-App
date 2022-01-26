import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: DelayedDisplay(
        delay: const Duration(milliseconds: 800),
        child: BottomAppBar(
          color: Colors.transparent,
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.check_circle_outline,
                      color: primaryColor,
                    ),
                    Text(
                      'Save New Address',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  child: Container(
                    height: 45,
                    width: 130,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              'images/back.png',
              color: Colors.white,
            )),
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(20),
        child: DelayedDisplay(
          delay: const Duration(milliseconds: 500),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Add Address',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontSize: 20.sp),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(color: Colors.black, blurRadius: 15)
                      ]),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 10, left: 20, right: 20),
                    child: Column(
                      children: [
                        TextField(
                            decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: 'Address Line',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: primaryfont,
                              fontSize: 12),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: 'Landmark',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: primaryfont,
                              fontSize: 12),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        TextField(
                            decoration: InputDecoration(
                          alignLabelWithHint: true,
                          labelText: 'Pincode',
                          labelStyle: TextStyle(
                              color: Colors.grey,
                              fontFamily: primaryfont,
                              fontSize: 12),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        )),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: TextField(
                                  decoration: InputDecoration(
                                alignLabelWithHint: true,
                                labelText: 'State',
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: primaryfont,
                                    fontSize: 12),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              )),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Expanded(
                              child: TextField(
                                  decoration: InputDecoration(
                                alignLabelWithHint: true,
                                labelText: 'City',
                                labelStyle: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: primaryfont,
                                    fontSize: 12),
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                ),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
        ),
      )),
    );
  }
}
