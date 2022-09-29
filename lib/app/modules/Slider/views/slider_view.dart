import 'package:app_decby/app/modules/Slider/views/onboarding1.dart';
import 'package:app_decby/app/modules/Slider/views/onboarding2.dart';
import 'package:app_decby/app/modules/Slider/views/onboarding3.dart';
import 'package:app_decby/others/custome_widget.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:onboarding_animation/onboarding_animation.dart';

import '../controllers/slider_controller.dart';

class SliderView extends GetView<SliderController> {
  const SliderView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: clrbackground,
      body: OnBoardingAnimation(
        pages: [
          OnBoarding1(),
          OnBoarding2(),
          OnBoarding3(),
        ],
        indicatorDotHeight: 10.0,
        indicatorDotWidth: 10.0,
        indicatorActiveDotColor: secondaryPink,
        indicatorInActiveDotColor: secondaryPurple,
        indicatorType: IndicatorType.jumpingDots,
        indicatorPosition: IndicatorPosition.topLeft,
      ),
    );
  }
}
