import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/login_page.dart';

void main() {
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OMARK',
        theme: ThemeData(fontFamily: 'Poppins'),
        home: AnimatedSplashScreen(
          duration: 0,
          splashIconSize: 300,
          splash: Image.asset('images/omarklogo.png'),
          nextScreen: const LoginPage(),
          splashTransition: SplashTransition.scaleTransition,
          animationDuration: const Duration(milliseconds: 1000),
          backgroundColor: backgroundColor,
        ),
      ),
      designSize: const Size(360, 800),
    );
  }
}
