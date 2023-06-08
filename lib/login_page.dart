import 'package:animated_neumorphic/animated_neumorphic.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omark_gym/constants.dart';
import 'package:omark_gym/otp.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/loginbackground.png'),
                      fit: BoxFit.cover)),
            ),

            ///LOGO
            Padding(
              padding: EdgeInsets.only(bottom: 400.h),
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 500),
                // slidingBeginOffset: const Offset(0.0, 0.7),
                child: WidgetCircularAnimator(
                  size: 210,
                  innerIconsSize: 4,
                  outerIconsSize: 4,
                  innerAnimation: Curves.easeInOutBack,
                  outerAnimation: Curves.easeInOutBack,
                  innerColor: Colors.white,
                  outerColor: Colors.white,
                  innerAnimationSeconds: 10,
                  outerAnimationSeconds: 10,
                  child: Center(
                    child: GlassmorphicContainer(
                      width: 150.w,
                      height: 150.h,
                      borderRadius: 100.r,
                      blur: 0.1,
                      alignment: Alignment.bottomCenter,
                      border: 0.4,
                      linearGradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Color(0xFFffffff).withOpacity(0.1),
                            Color(0xFFFFFFFF).withOpacity(0.05),
                          ],
                          stops: [
                            0.1,
                            1,
                          ]),
                      borderGradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color(0xFFffffff).withOpacity(0.5),
                          Color((0xFFFFFFFF)).withOpacity(0.5),
                        ],
                      ),
                      child: Stack(
                        children: [
                          Image.asset('images/omarklogo.png',
                              fit: BoxFit.cover,
                              color: Colors.white,
                              height: 150.h,
                              width: 150.w),
                          Padding(
                            padding: EdgeInsets.only(top: 100),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'OMARK',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.bold,
                                        shadows: [
                                          BoxShadow(
                                              color:
                                                  Colors.black.withOpacity(0.4),
                                              spreadRadius: 5,
                                              blurRadius: 5)
                                        ],
                                        letterSpacing: .5),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            ///Text Field
            DelayedDisplay(
              delay: const Duration(milliseconds: 1600),
              // slidingBeginOffset: const Offset(0.0, 0.7),
              child: Padding(
                padding: EdgeInsets.only(top: 350.h),
                child: DelayedDisplay(
                  delay: const Duration(milliseconds: 700),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: const PrimaryTextField(txt: 'Enter Phone Nunmber'),
                  ),
                ),
              ),
            ),

            ///SUBMIT BUTTON
            DelayedDisplay(
              delay: const Duration(milliseconds: 1700),
              // slidingBeginOffset: const Offset(0.0, 0.7),
              child: Padding(
                padding: EdgeInsets.only(top: 430.h, right: 20.w, left: 20.w),
                child: GlassmorphicContainer(
                  width: double.infinity,
                  height: 55.h,
                  borderRadius: 30.r,
                  blur: 3,
                  alignment: Alignment.bottomCenter,
                  border: 0.3,
                  linearGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.1),
                        Color(0xFFFFFFFF).withOpacity(0.05),
                      ],
                      stops: [
                        0.1,
                        1,
                      ]),
                  borderGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.5),
                      Color((0xFFFFFFFF)).withOpacity(0.5),
                    ],
                  ),
                  child: Center(
                      child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OTPScreen()));
                    },
                    child: Text(
                      'SUBMIT',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 5)
                            ],
                            letterSpacing: 3.5),
                      ),
                    ),
                  )),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 490.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1800),
                    slidingBeginOffset: Offset(0.0, 2.0),
                    child: Text(
                      'Terms of Services',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 10.0,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 1900),
                    slidingBeginOffset: Offset(0.0, 2.0),
                    child: Text(
                      'By continuing you indicate that you\nhave read and agreed to the\nTerms of Services',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 2000),
                    slidingBeginOffset: Offset(0.0, 2.0),
                    child: Text(
                      'POWERED BY',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: Colors.white,
                        // fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 3.0,
                            color: Colors.white,
                          ),
                          Shadow(
                            offset: Offset(1.0, 1.0),
                            blurRadius: 8.0,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  DelayedDisplay(
                    delay: Duration(milliseconds: 2100),
                    slidingBeginOffset: Offset(0.0, 2.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'images/digitalindia.png',
                          height: 35,
                          width: 75,
                        ),
                        Image.asset(
                          'images/makeinindia.png',
                          height: 35,
                          width: 75,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PrimaryTextField extends StatelessWidget {
  final String txt;
  const PrimaryTextField({Key? key, required this.txt}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.h,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: TextField(
        style: const TextStyle(color: Colors.white),
        keyboardType: TextInputType.number,
        maxLength: 10,
        obscureText: false,
        decoration: InputDecoration(
            counterText: '',
            contentPadding: EdgeInsets.only(left: 20.w),
            border: InputBorder.none,
            hintText: txt,
            hintStyle: TextStyle(color: Colors.white54, fontSize: 15.sp)),
      ),
    );
  }
}
