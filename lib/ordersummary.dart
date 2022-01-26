import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'constants.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 45,
                  width: 130,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Text(
                      'BACK',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  ),
                ),
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
                      'Checkout',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: primaryfont,
                          fontWeight: FontWeight.bold,
                          fontSize: 11),
                    ),
                  ),
                ),
              ),
            ],
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
            icon: Image.asset('images/back.png')),
        title: Text(
          'Order Summary',
          style: TextStyle(
              color: Colors.white,
              fontFamily: primaryfont,
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: PageBody(),
    );
  }
}

class PageBody extends StatefulWidget {
  const PageBody({Key? key}) : super(key: key);

  @override
  _PageBodyState createState() => _PageBodyState();
}

class _PageBodyState extends State<PageBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                        height: 25,
                        width: 25,
                        child: Image(image: AssetImage('images/orders.png'))),
                    Text(
                      'Orders',
                      style: TextStyle(
                          color: Colors.white, fontFamily: primaryfont),
                    ),
                  ],
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Remove all',
                      style: TextStyle(
                          color: Colors.white, fontFamily: primaryfont),
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 7, color: Colors.white24)]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwOsOw9wX04sHJdEvShp_G-c6_Qi_gpC1z9Q&usqp=CAU'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item name here',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: primaryfont,
                              fontSize: 12),
                        ),
                        Text(
                          'Rs. 1500',
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: primaryfont,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: Image(image: AssetImage('images/up.png'))),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontFamily: primaryfont),
                        ),
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: Image(image: AssetImage('images/down.png'))),
                      ],
                    ),
                    Text(
                      'Rs.2000.0',
                      style: TextStyle(
                          color: Colors.white, fontFamily: primaryfont),
                    ),
                    Icon(
                      Icons.delete,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(blurRadius: 7, color: Colors.white24)]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5kp_syiX8-uWKXOmyrA2rV4lMAs1n_w1eMQ&usqp=CAU'),
                              fit: BoxFit.cover)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Item name here',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: primaryfont,
                              fontSize: 12),
                        ),
                        Text(
                          'Rs. 1500',
                          style: TextStyle(
                              color: primaryColor,
                              fontFamily: primaryfont,
                              fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: Image(image: AssetImage('images/up.png'))),
                        Text(
                          '1',
                          style: TextStyle(
                              color: Colors.white, fontFamily: primaryfont),
                        ),
                        SizedBox(
                            height: 25,
                            width: 25,
                            child: Image(image: AssetImage('images/down.png'))),
                      ],
                    ),
                    Text(
                      'Rs.2000.0',
                      style: TextStyle(
                          color: Colors.white, fontFamily: primaryfont),
                    ),
                    Icon(
                      Icons.delete,
                      color: primaryColor,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subtotal',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs.4000.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Shipping Fees',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs.40.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tax',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs.20.0',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 15.w),
                    child: const Promocode(txt: 'Have Promocode ?'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total (Including Tax)',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs.4060.0',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: primaryfont,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class Promocode extends StatelessWidget {
  final String txt;
  const Promocode({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.black,
        border: Border.all(color: primaryColor),
        borderRadius: BorderRadius.circular(7.r),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.only(left: 20.w, bottom: 4),
            border: InputBorder.none,
            hintText: txt,
            hintStyle: TextStyle(
                color: Colors.white.withOpacity(0.7), fontSize: 15.sp)),
      ),
    );
  }
}
