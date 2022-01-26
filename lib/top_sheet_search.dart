import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';

Future<Object?> topsheetsearch(BuildContext context) {
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
            color: backgroundColor,
            child: Column(
              children: [
                SizedBox(
                  height: 60.h,
                ),
                Container(
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
                        contentPadding: EdgeInsets.only(top: 9, left: 20.w),
                        border: InputBorder.none,
                        suffixIcon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        hintText: 'Search',
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 17.sp)),
                  ),
                ),
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
          curve: Curves.easeInOutCirc,
        ).drive(Tween<Offset>(
          begin: const Offset(0, -1.0),
          end: Offset.zero,
        )),
        child: child,
      );
    },
  );
}
