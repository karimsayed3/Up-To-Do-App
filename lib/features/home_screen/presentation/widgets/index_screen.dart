import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uptodo/core/helper/spacing.dart';
class IndexScreen extends StatelessWidget {
  const IndexScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFF121212),
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 10.w),
            child: SvgPicture.asset(
              "assets/images/sort.svg",
            ),
          ),
          leadingWidth: 40.w,
          actions: [
            Padding(
                padding: EdgeInsets.only(right: 10.w),
                child: Container(
                  width: 45.w,
                  height: 45.h,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/profile_image.jpg",
                      ),
                      fit: BoxFit.fill,
                    ),
                    shape: CircleBorder(),
                  ),
                )),
          ],
          backgroundColor: const Color(0xFF121212),
          elevation: 0.0,
          title: const Text("Index"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              verticalSpace(50),
              Center(
                  child: SizedBox(
                      width: 350.w,
                      height: 300.h,
                      child: SvgPicture.asset(
                          "assets/images/no_tasks_image.svg"))),
              verticalSpace(20),
              Text(
                'What do you want to do today?',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8700000047683716),
                  fontSize: 20.sp,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  // height: 0.08,
                ),
              ),
              verticalSpace(20),
              Text(
                'Tap + to add your tasks',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8700000047683716),
                  fontSize: 16.sp,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  // height: 0.09,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
