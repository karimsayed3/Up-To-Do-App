import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:uptodo/core/routing/routes.dart';
import 'package:uptodo/core/theming/colors.dart';
import 'package:uptodo/core/theming/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/features/onboarding/presentation/widgets/navigate_buttons_widget.dart';
import 'package:uptodo/features/onboarding/presentation/widgets/page_view_widget.dart';
import 'package:uptodo/features/onboarding/presentation/widgets/skip_button_widget.dart';
import 'package:uptodo/features/onboarding/presentation/widgets/smooth_indicator_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorsManager.scaffoldBackgroundColor,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SkipButtonWidget(
                    controller: controller,
                    onPressed: () {
                      controller.jumpToPage(2);
                    },
                  ),
                  PageViewWidget(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        isLastPage = value == 2;
                      });
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  SmoothIndicatorWidget(
                    controller: controller,
                  ),
                ],
              ),
            ),
            NavigateButtonsWidget(
              isLastPage: isLastPage,
              onPressedBackButton:  () {
                controller.previousPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
              onPressedNextButton: isLastPage?() {
                /// TODO : Navigate to Next Page
                Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen, (route) => false);
              } :(){
                controller.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut);
              },
            ),
          ],
        ),
      ),
    );
  }
}
