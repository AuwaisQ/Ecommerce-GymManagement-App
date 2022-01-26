import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/gym_plans.dart';
import 'constants.dart';

class GYCPage extends StatelessWidget {
  const GYCPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            toolbarHeight: 10,
            elevation: 0,
            backgroundColor: Colors.transparent,
            bottom: TabBar(
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              isScrollable: true,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white)),
              tabs: [
                Tab(
                  child: Text(
                    'Gym',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: primaryfont,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Yoga',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 20.sp,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Crossfit',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: primaryfont,
                      fontSize: 20.sp,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ///Yoga Tab
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                      child: Column(
                        children: [
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://blog.nasm.org/hubfs/cleangym%20%281%29.jpg'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const GymPlans()));
                                      },
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),

                          //2nd Continer
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://images.livemint.com/img/2021/08/10/1140x641/20201025_MUM-PC-MN_Gym_Reopen_015_1628583917333_1628583934428.JPG'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),

                          ///3rd Container
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://www.acmefitness.com/assets/micro/images/gym-equipment-store-hyderabad.jpg'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              ///Yoga Tab
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                      child: Column(
                        children: [
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://images.indianexpress.com/2020/12/Namita-Piparaiya_winter-yoga-practices_1200-e1614064929403.jpg'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(height: 40.h),

                          //2nd Continer
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://cdn.narendramodi.in/cmsuploads/0.62549900_1497094458_636.jpeg'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40.h,
                          ),

                          ///3rd Container
                          Container(
                            height: 300.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.r),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 7.r,
                                      color: Colors.black.withOpacity(0.3))
                                ],
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      'https://aniportalimages.s3.amazonaws.com/media/details/meditation-zen-chan-yoga_yyMZVch_FKTpxWP.jpg'),
                                  fit: BoxFit.cover,
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Omark Gym',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        'Ujjain, Madhya Pradesh',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontFamily: primaryfont,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ),

                                ///Bottom Sheet 1
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: const [
                                          Icon(
                                            Icons.star,
                                            color: Colors.white,
                                          ),
                                          Text(
                                            '4.5',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontFamily: primaryfont),
                                          )
                                        ],
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        'images/locateicon.png',
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              ///Crossfit Tab
              SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 20.w, right: 20.w, top: 20.h),
                      child: Column(
                        children: [
                          Container(
                              height: 300.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 7.r,
                                        color: Colors.black.withOpacity(0.3))
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://p4.wallpaperbetter.com/wallpaper/890/652/903/muscles-strength-crossfit-technique-wallpaper-preview.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Omark Gym',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Ujjain, Madhya Pradesh',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),

                                  ///Bottom Sheet 1
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: primaryfont),
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'images/locateicon.png',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 40.h,
                          ),

                          //2nd Continer
                          Container(
                              height: 300.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 7.r,
                                        color: Colors.black.withOpacity(0.3))
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://dailyburn.com/life/wp-content/uploads/2014/08/CrossFit-Workouts-5-WODs-1.jpg'),
                                    fit: BoxFit.cover,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Omark Gym',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Ujjain, Madhya Pradesh',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),

                                  ///Bottom Sheet 1
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: primaryfont),
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'images/locateicon.png',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                          SizedBox(
                            height: 40.h,
                          ),

                          ///3rd Container
                          Container(
                              height: 300.h,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(25.r),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 7.r,
                                        color: Colors.black.withOpacity(0.3))
                                  ],
                                  image: const DecorationImage(
                                    image: NetworkImage(
                                        'https://www.muscleandfitness.com/wp-content/uploads/2018/04/1109-ketllebell-squat.jpg?quality=86&strip=all'),
                                    fit: BoxFit.cover,
                                  )),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Text(
                                          'Omark Gym',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          'Ujjain, Madhya Pradesh',
                                          style: TextStyle(
                                              color: Colors.grey,
                                              fontFamily: primaryfont,
                                              fontWeight: FontWeight.bold),
                                        )
                                      ],
                                    ),
                                  ),

                                  ///Bottom Sheet 1
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          children: const [
                                            Icon(
                                              Icons.star,
                                              color: Colors.white,
                                            ),
                                            Text(
                                              '4.5',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontFamily: primaryfont),
                                            )
                                          ],
                                        ),
                                      ),
                                      IconButton(
                                        onPressed: () {},
                                        icon: Image.asset(
                                          'images/locateicon.png',
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
