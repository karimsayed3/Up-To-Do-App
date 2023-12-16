import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:uptodo/core/routing/app_router.dart';
import 'package:uptodo/up_to_do_app.dart';

void main() async{
  runApp(UpToDoApp(appRouter: AppRouter(),));
}
