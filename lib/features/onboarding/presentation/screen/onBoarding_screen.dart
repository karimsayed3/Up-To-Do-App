import 'dart:async';

import 'package:flutter/material.dart';
import 'package:uptodo/core/helper/extensions.dart';
import '../../../../core/helper/cache_helper/cache_helper.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../widgets/navigate_buttons_widget.dart';
import '../widgets/page_view_widget.dart';
import '../widgets/skip_button_widget.dart';
import '../widgets/smooth_indicator_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  bool isLastPage = false;


  @override
  void initState() {
    // TODO: implement initState
    if(CacheHelper.getdata(key: 'onBoarding') =='onBoarding'){
      Timer(Duration(milliseconds: 5), () {Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen,(route) => false,);});
    }
    super.initState();
  }


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
              onPressedNextButton:isLastPage ?() {
                 CacheHelper.saveData(key: 'onBoarding', value: "onBoarding").then((value) {
                   // next version of navigation between screens
                   context.pushNamedAndRemoveUntil(Routes.homeScreen, predicate: (Route<dynamic> route) => false,);
                   // Navigator.pushNamedAndRemoveUntil(context, Routes.homeScreen, (route) => false);
                 });
              }: () {
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
