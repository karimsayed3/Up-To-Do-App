import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PageViewWidget extends StatelessWidget {
  const PageViewWidget({super.key, required this.controller, required this.onPageChanged});
  final PageController controller;
  final Function(int) onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .67,
      child: PageView(
        controller: controller,
        onPageChanged: onPageChanged,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * .8,
            padding: EdgeInsets.symmetric(
                horizontal:
                MediaQuery.of(context).size.width * .02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      MediaQuery.of(context).size.width *
                          .05),
                  child: SizedBox(
                      height:
                      MediaQuery.of(context).size.height * .5,
                      child: Image.asset(
                        "assets/images/onBoarding1.png",
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Manage your tasks',
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 32.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'You can easily manage all of your daily tasks in DoMe for free',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 16.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    // height: 0.09,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            padding: EdgeInsets.symmetric(
                horizontal:
                MediaQuery.of(context).size.width * .02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      MediaQuery.of(context).size.width *
                          .05),
                  child: SizedBox(
                      height:
                      MediaQuery.of(context).size.height * .5,
                      child: Image.asset(
                        "assets/images/onBoarding2.png",
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Create daily routine',
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 32.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'In Uptodo you can create your personalized routine to stay productive',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 16.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    // height: 0.09,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * .8,
            padding: EdgeInsets.symmetric(
                horizontal:
                MediaQuery.of(context).size.width * .02),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal:
                      MediaQuery.of(context).size.width *
                          .05),
                  child: SizedBox(
                      height:
                      MediaQuery.of(context).size.height * .5,
                      child: Image.asset(
                        "assets/images/onBoarding3.png",
                        fit: BoxFit.fill,
                      )),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  'Orgonaize your tasks',
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 30.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    // height: 0,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  'You can organize your daily tasks by adding your tasks into separate categories',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white
                        .withOpacity(0.8700000047683716),
                    fontSize: 16.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    // height: 0.09,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
