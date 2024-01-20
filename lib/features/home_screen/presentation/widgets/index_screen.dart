import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uptodo/core/helper/spacing.dart';
import 'package:uptodo/core/widgets/app_text_form_field.dart';

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
        body: withDataWidget(),
      ),
    );
  }

  withOutDataWidget() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          verticalSpace(50),
          Center(
              child: SizedBox(
                  width: 350.w,
                  height: 300.h,
                  child: SvgPicture.asset("assets/images/no_tasks_image.svg"))),
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
    );
  }

  withDataWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: AppTextFormField(
            hintText: 'Search for your task...',
            validator: (p0) {},
            focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFAFAFAF),
                ),
                borderRadius: BorderRadius.circular(10)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xFFAFAFAF),
                ),
                borderRadius: BorderRadius.circular(10)),
            hintStyle: const TextStyle(
              color: Color(0xFFAFAFAF),
            ),
            inputTextStyle: const TextStyle(color: Colors.black),
            backgroundColor: Colors.black,
            prefixIcon: SizedBox(
              width: 10.w,
              height: 10.h,
              child: SvgPicture.asset(
                "assets/images/search.svg",
                color: const Color(0xFFAFAFAF),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(
              vertical: 25.h,

            ),
          ),
        ),
        verticalSpace(20),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.20999999344348907),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Today",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8700000047683716),
                          ),
                        ),
                        horizontalSpace(5),
                        SvgPicture.asset("assets/images/arrow-down.svg"),
                      ],
                    ),
                  ),
                  verticalSpace(10),
                  SizedBox(
                    // height: 250.h,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          // margin: EdgeInsets.symmetric(vertical: 10.h),
                          padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 10.h),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF363636),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 25.w,
                                height: 25.h,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white
                                  )
                                )
                              ),
                              horizontalSpace(10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Do Math Homework',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8700000047683716),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    // verticalSpace(5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Today At 16:45',
                                          style: TextStyle(
                                            color: const Color(0xFFAFAFAF),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        // horizontalSpace(10),
                                        Row(
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                                              decoration: BoxDecoration(
                                                color: Color(0xFF7F9BFF),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset('assets/images/university.svg',width: 20.w,),
                                                  horizontalSpace(5),
                                                  Text(
                                                    'University',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            horizontalSpace(5),
                                            Container(
                                              padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(
                                                  color: Color(0xFF8687E7)
                                                )
                                              ),
                                              child: Row(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset('assets/images/flag.svg',width: 20.w,),
                                                  horizontalSpace(5),
                                                  Text(
                                                    '10',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 12.sp,
                                                      fontWeight: FontWeight.w400,
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return verticalSpace(10);
                      },
                      itemCount: 10,
                    ),
                  ),
                  verticalSpace(10),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
                    decoration: ShapeDecoration(
                      color: Colors.white.withOpacity(0.20999999344348907),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Completed",
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8700000047683716),
                          ),
                        ),
                        horizontalSpace(5),
                        SvgPicture.asset("assets/images/arrow-down.svg"),
                      ],
                    ),
                  ),
                  verticalSpace(10),
                  SizedBox(
                    // height: 250.h,
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Container(
                          // margin: EdgeInsets.symmetric(vertical: 10.h),
                          padding: EdgeInsets.symmetric(horizontal: 5.w,vertical: 15.h),
                          decoration: ShapeDecoration(
                            color: const Color(0xFF363636),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                width: 25.w,
                                height: 25.h,
                                decoration:BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white
                                  )
                                )
                              ),
                              horizontalSpace(10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Do Math Homework',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8700000047683716),
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    // verticalSpace(5),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Today At 16:45',
                                          style: TextStyle(
                                            color: const Color(0xFFAFAFAF),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        // horizontalSpace(10),
                                        // Row(
                                        //   children: [
                                        //     Container(
                                        //       padding: EdgeInsets.symmetric(horizontal: 15.w,vertical: 15.h),
                                        //       decoration: BoxDecoration(
                                        //         color: Color(0xFF7F9BFF),
                                        //         borderRadius: BorderRadius.circular(10),
                                        //       ),
                                        //       child: Row(
                                        //         crossAxisAlignment: CrossAxisAlignment.center,
                                        //         mainAxisAlignment: MainAxisAlignment.center,
                                        //         children: [
                                        //           SvgPicture.asset('assets/images/university.svg',width: 20.w,),
                                        //           horizontalSpace(5),
                                        //           Text(
                                        //             'University',
                                        //             style: TextStyle(
                                        //               color: Colors.white,
                                        //               fontSize: 12.sp,
                                        //               fontWeight: FontWeight.w400,
                                        //             ),
                                        //           )
                                        //         ],
                                        //       ),
                                        //     ),
                                        //     horizontalSpace(5),
                                        //     Container(
                                        //       padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                                        //       decoration: BoxDecoration(
                                        //         color: Colors.transparent,
                                        //         borderRadius: BorderRadius.circular(10),
                                        //         border: Border.all(
                                        //           color: Color(0xFF8687E7)
                                        //         )
                                        //       ),
                                        //       child: Row(
                                        //         crossAxisAlignment: CrossAxisAlignment.center,
                                        //         mainAxisAlignment: MainAxisAlignment.center,
                                        //         children: [
                                        //           SvgPicture.asset('assets/images/flag.svg',width: 20.w,),
                                        //           horizontalSpace(5),
                                        //           Text(
                                        //             '10',
                                        //             style: TextStyle(
                                        //               color: Colors.white,
                                        //               fontSize: 12.sp,
                                        //               fontWeight: FontWeight.w400,
                                        //             ),
                                        //           )
                                        //         ],
                                        //       ),
                                        //     ),
                                        //   ],
                                        // ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return verticalSpace(10);
                      },
                      itemCount: 10,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
