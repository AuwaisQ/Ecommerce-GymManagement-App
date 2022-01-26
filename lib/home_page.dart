import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Theme(
          data: Theme.of(context)
              .copyWith(canvasColor: backgroundColor.withOpacity(0.9)),
          child: const AppDrawer()),
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: DelayedDisplay(
          delay: const Duration(milliseconds: 500),
          child: InkWell(
            onTap: () => _scaffoldKey.currentState!.openDrawer(),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: CircleAvatar(
                    radius: 15.r,
                    backgroundImage: const NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzf0VTz2LcrRqAbFF3BfZEonQ6QJHX5r4D6Q&usqp=CAU')),
              ),
            ),
          ),
        ),
        actions: [
          DelayedDisplay(
            delay: const Duration(milliseconds: 500),
            child: TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Icon(
                      Icons.military_tech_outlined,
                      color: Colors.white,
                    ),
                    Text(
                      'Rewards',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: primaryfont,
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
      body: const PageBody(),
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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: Text(
                'Hey John',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: primaryfont,
                    fontSize: 20.sp),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              child: Text(
                'Get ready to saty fit',
                style: TextStyle(
                    color: Colors.grey,
                    fontFamily: primaryfont,
                    fontSize: 13.sp),
              ),
            ),
            DelayedDisplay(
              delay: const Duration(seconds: 1),
              child: SizedBox(
                height: 80.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ///1st Button
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.w,
                            child: IconButton(
                              splashRadius: 0.1,
                              icon: Image.asset('images/health.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'health',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: primaryfont),
                          )
                        ],
                      ),
                    ),

                    ///2st Button
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.w,
                            child: IconButton(
                              splashRadius: 0.1,
                              icon: Image.asset('images/yoga.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Yoga',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: primaryfont),
                          )
                        ],
                      ),
                    ),

                    ///3st Button
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.w,
                            child: IconButton(
                              splashRadius: 0.1,
                              icon: Image.asset('images/suppliment.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Suppliment',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: primaryfont),
                          )
                        ],
                      ),
                    ),

                    ///4st Button
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.w,
                            child: IconButton(
                              splashRadius: 0.1,
                              icon: Image.asset('images/trainer.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Trainer',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: primaryfont),
                          )
                        ],
                      ),
                    ),

                    ///5st Button
                    TextButton(
                      onPressed: () {},
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 45.h,
                            width: 45.w,
                            child: IconButton(
                              splashRadius: 0.1,
                              icon: Image.asset('images/fitness.png'),
                              onPressed: () {},
                            ),
                          ),
                          Text(
                            'Fitness',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: primaryfont),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1200),
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    boxShadow: [
                      BoxShadow(blurRadius: 10.r, color: Colors.black)
                    ],
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://assets.website-files.com/5bee2dee67d34caed2a30658/5c183054caac5f3beceacbab_Personal-Trainer-Bicep-Curl-In-Gym.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1200),
              child: Container(
                height: 400.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(blurRadius: 10.r, color: Colors.black)
                    ],
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://efitnesshelp.com/wp-content/uploads/2020/02/sergi-constance-1024x1020.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            DelayedDisplay(
              delay: const Duration(milliseconds: 1200),
              child: Container(
                height: 400.h,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    boxShadow: [
                      BoxShadow(blurRadius: 10.r, color: Colors.black)
                    ],
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://fitnessvolt.com/wp-content/uploads/2020/05/jaco-de-bruyn.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
          ],
        ),
      ),
    );
  }
}
