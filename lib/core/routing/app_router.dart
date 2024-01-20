import 'package:flutter/material.dart';
import 'package:uptodo/core/DI/injector.dart';
import 'package:uptodo/features/home_screen/business_logic/home_cubit.dart';
import 'routes.dart';
import '../../features/home_screen/presentation/screen/home_screen.dart';
import '../../features/onboarding/presentation/screen/onBoarding_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uptodo/core/routing/routes.dart';


class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //this arguments to be passed in any screen like this ( arguments as ClassName )
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingScreen(),
        );
      case Routes.loginScreen:
      // return MaterialPageRoute(
      //   builder: (_) => BlocProvider(
      //     create: (context) => getIt<LoginCubit>(),
      //     child: const LoginScreen(),
      //   ),
      // );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) =>
              BlocProvider.value(
                value: getIt<HomeCubit>(),
                child: HomeScreen(),
              ),

        );
      default:
        return MaterialPageRoute(
          builder: (_) =>
              Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
