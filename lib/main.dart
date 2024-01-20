import 'package:flutter/material.dart';
import 'package:uptodo/core/DI/injector.dart';
import 'core/helper/cache_helper/cache_helper.dart';
import 'core/routing/app_router.dart';
import 'up_to_do_app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  initGetIt();
  runApp(UpToDoApp(appRouter: AppRouter(),));
}



