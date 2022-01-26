import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:omark_gym/bottom_bar.dart';
import 'package:omark_gym/constants.dart';
import 'package:page_transition/page_transition.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:widget_circular_animator/widget_circular_animator.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController controller = TextEditingController(text: "");
  String thisText = "";
  int pinLength = 4;
  bool hasError = false;
  late String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            ///Background Image
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/loginbackground.png'),
                      fit: BoxFit.cover)),
            ),

            ///BACK BUTTON
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              slidingBeginOffset: const Offset(-0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 10.h, left: 10.w),
                child: GlassmorphicContainer(
                  width: 45,
                  height: 45.h,
                  borderRadius: 15.r,
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
                      child: SizedBox(
                    width: 30,
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                  )),
                ),
              ),
            ),

            ///LOGO
            Padding(
              padding: EdgeInsets.only(bottom: 400.h),
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

            ///OTP BOXES
            Padding(
              padding: const EdgeInsets.only(top: 330),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DelayedDisplay(
                    delay: const Duration(milliseconds: 500),
                    slidingBeginOffset: const Offset(-0.35, 0.0),
                    child: PinCodeTextField(
                      controller: controller,
                      hideCharacter: false,
                      highlight: true,
                      highlightColor: backgroundColor,
                      defaultBorderColor: Colors.white,
                      hasTextBorderColor: primaryColor,
                      maxLength: pinLength,
                      hasError: hasError,
                      pinBoxWidth: 50.w,
                      pinBoxHeight: 60.h,
                      hasUnderline: false,
                      wrapAlignment: WrapAlignment.spaceEvenly,
                      pinBoxDecoration:
                          ProvidedPinBoxDecoration.defaultPinBoxDecoration,
                      pinTextStyle: TextStyle(fontSize: 22.sp),
                      pinTextAnimatedSwitcherTransition:
                          ProvidedPinBoxTextAnimation.scalingTransition,
                      //                    pinBoxColor: Colors.green[100],
                      pinTextAnimatedSwitcherDuration:
                          const Duration(milliseconds: 300),
                      //                    highlightAnimation: true,
                      highlightAnimationBeginColor: Colors.black,
                      highlightAnimationEndColor: Colors.white12,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 390),
              child: DelayedDisplay(
                delay: const Duration(milliseconds: 600),
                slidingBeginOffset: const Offset(-0.35, 0.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.sp),
                        ))
                  ],
                ),
              ),
            ),

            ///SUBMIT BUTTON
            DelayedDisplay(
              delay: const Duration(milliseconds: 700),
              slidingBeginOffset: const Offset(-0.35, 0.0),
              child: Padding(
                padding: EdgeInsets.only(top: 470.h, right: 100.w, left: 100.w),
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
                              builder: (context) => const BottomBar()));
                    },
                    child: Text(
                      'SUBMIT',
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                            shadows: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 5,
                                  blurRadius: 5)
                            ],
                            letterSpacing: 3),
                      ),
                    ),
                  )),
                ),
              ),
            ),

            // DelayedDisplay(
            //   delay: const Duration(milliseconds: 300),
            //   slidingBeginOffset: const Offset(-0.35, 0.0),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(horizontal: 20.w),
            //     child: Container(
            //       height: 50.h,
            //       width: 150.w,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(30.r),
            //         color: Colors.grey,
            //       ),
            //       child: Center(
            //           child: TextButton(
            //               onPressed: () {
            //                 Navigator.push(
            //                     context,
            //                     PageTransition(
            //                         duration: const Duration(milliseconds: 600),
            //                         reverseDuration:
            //                             const Duration(milliseconds: 200),
            //                         child: const BottomBar(),
            //                         type: PageTransitionType.fade));
            //               },
            //               child: Text(
            //                 'SUBMIT',
            //                 style: TextStyle(
            //                     color: Colors.black,
            //                     fontWeight: FontWeight.bold,
            //                     fontSize: 17.sp),
            //               ))),
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
