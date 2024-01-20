import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothIndicatorWidget extends StatelessWidget {
  const SmoothIndicatorWidget({super.key, required this.controller});
final PageController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SmoothPageIndicator(
        controller: controller,
        count: 3,
        effect: SlideEffect(
          spacing: 8.0.w,
          radius: 5.0.r,
          dotWidth: 30.0.w,
          dotHeight: 5.h,
          strokeWidth: 1,
          dotColor: Colors.grey,
          activeDotColor: const Color(0xFFFFFFFF),
        ),
      ),
    );
  }
}
