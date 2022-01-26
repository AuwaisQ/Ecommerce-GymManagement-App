import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/ordersummary.dart';

Future<Object?> topsheetcart(BuildContext context) {
  return showGeneralDialog(
    context: context,
    barrierDismissible: true,
    transitionDuration: const Duration(milliseconds: 500),
    barrierLabel: MaterialLocalizations.of(context).dialogLabel,
    barrierColor: Colors.black.withOpacity(0.5),
    pageBuilder: (context, _, __) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Card(
            ///Colour Of Top Sheet
            color: backgroundColor.withOpacity(1.0),
            child: Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: const [
                      AddedItem(),
                      AddedItem(),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.w),
                  child: Row(
                    children: [
                      Text(
                        'TOTAL- \$155.60 | 3 TIMES',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                          height: 50.h,
                          width: 150.w,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(30.r),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5.r,
                                  spreadRadius: 5.r,
                                  color: Colors.black.withOpacity(0.1),
                                )
                              ]),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderSummary()));
                            },
                            child: Center(
                              child: Text(
                                'CHECKOUT',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 17.sp,
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return SlideTransition(
        position: CurvedAnimation(
          parent: animation,
          curve: Curves.easeOut,
        ).drive(Tween<Offset>(
          begin: const Offset(0, -1.0),
          end: Offset.zero,
        )),
        child: child,
      );
    },
  );
}

class AddedItem extends StatelessWidget {
  const AddedItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50.h,
        ),
        Container(
          margin: const EdgeInsets.all(20),
          height: 160.h,
          width: 242.w,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.r),
              color: backgroundColor,
              boxShadow: [
                BoxShadow(
                  blurRadius: 5.r,
                  spreadRadius: 5.r,
                  color: Colors.black.withOpacity(0.1),
                )
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'OMARK\nACYMETRICAL',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'STORM GREEN',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 49.h,
                    ),
                    Text(
                      '\$ 33.60',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  width: 35.w,
                ),
                Container(
                  height: 135.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.r),
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://cdn.shopify.com/s/files/1/0667/0133/products/AlphaluxForceBra_31_1200x.jpg?v=1632291740'),
                        fit: BoxFit.cover),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 60.h,
          width: 240.w,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 44.h,
                width: 40.w,
                decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(30.r),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5.r,
                        spreadRadius: 5.r,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ]),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.white,
                      size: 20,
                    )),
              ),
              Container(
                  height: 44.h,
                  width: 200,
                  decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(30.r),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.r,
                          spreadRadius: 5.r,
                          color: Colors.black.withOpacity(0.1),
                        )
                      ]),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.remove,
                              color: Colors.white, size: 20)),
                      Text(
                        '2',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add,
                              color: Colors.white, size: 20)),
                      Padding(
                        padding: EdgeInsets.only(right: 10.w),
                        child: Text(
                          '\$ 33.60',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
