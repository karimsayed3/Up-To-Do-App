import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:uptodo/core/routing/app_router.dart';
import 'package:uptodo/core/theming/colors.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'core/routing/routes.dart';
class UpToDoApp extends StatefulWidget {
  const UpToDoApp({super.key,required this.appRouter});
  final AppRouter appRouter;
  @override
  State<UpToDoApp> createState() => _UpToDoAppState();
}

class _UpToDoAppState extends State<UpToDoApp> {


 @override
  void initState() {
    super.initState();
    // initialization();
  }

  void initialization() async {
    print('ready in 3...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 2...');
    await Future.delayed(const Duration(seconds: 1));
    print('ready in 1...');
    await Future.delayed(const Duration(seconds: 1));
    print('go!');
    FlutterNativeSplash.remove();
  }

    @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        title: 'Up To Do App',
        theme: ThemeData(
          primaryColor: ColorsManager.mainBlue,
          scaffoldBackgroundColor: Colors.white,
        ),
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.onBoardingScreen,
        onGenerateRoute: widget.appRouter.generateRoute,
      )
    );
  }
}
