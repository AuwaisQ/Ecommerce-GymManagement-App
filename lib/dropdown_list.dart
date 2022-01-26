import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';

class DropdownListWomen extends StatelessWidget {
  const DropdownListWomen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconSize: 25,
                iconColor: Colors.white,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Text(
                "Women",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              collapsed: Container(),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "NEW ARRIVALS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "ALL PRODUCTS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "SHORT\'S",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "LAST CHNACE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      Container(
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Center(
                          child: Text(
                            "Sale",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}

///DropDownList Men's
class DropdownListMen extends StatelessWidget {
  const DropdownListMen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpandableNotifier(
        child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          ScrollOnExpand(
            scrollOnExpand: true,
            scrollOnCollapse: false,
            child: ExpandablePanel(
              theme: const ExpandableThemeData(
                iconSize: 25,
                iconColor: Colors.white,
                headerAlignment: ExpandablePanelHeaderAlignment.center,
                tapBodyToCollapse: true,
              ),
              header: Text(
                "Men",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              collapsed: Container(),
              expanded: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "NEW ARRIVALS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "ALL PRODUCTS",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "SHORT\'S",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15.sp,
                        ),
                      )),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "LAST CHNACE",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                      Container(
                        height: 15.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(50.r),
                        ),
                        child: Center(
                          child: Text(
                            "Sale",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 8.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              builder: (_, collapsed, expanded) {
                return Padding(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Expandable(
                    collapsed: collapsed,
                    expanded: expanded,
                    theme: const ExpandableThemeData(crossFadePoint: 0),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ));
  }
}
