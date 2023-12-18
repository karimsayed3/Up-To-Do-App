import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigateButtonsWidget extends StatelessWidget {
  const NavigateButtonsWidget({super.key, this.onPressedBackButton, this.onPressedNextButton, required this.isLastPage});
  final Function()? onPressedBackButton;
  final Function()? onPressedNextButton;
  final bool isLastPage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 20.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onPressedBackButton,
            child: Center(
              child: Text(
                'BACK',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.4399999976158142),
                  fontSize: 16.sp,
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w400,
                  // height: 0.09,
                ),
              ),
            ),
          ),
          ElevatedButton(
            onPressed:onPressedNextButton,
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFF8874FF), // Background color
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10.w, vertical: 15.h),
              child: Center(
                child: Text(
                  isLastPage ? "GET STARTED" : 'NEXT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w400,
                    // height: 0.09,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
