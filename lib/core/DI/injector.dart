import 'package:get_it/get_it.dart';
import 'package:uptodo/features/home_screen/business_logic/home_cubit.dart';


final getIt = GetIt.instance;
void initGetIt() {
  getIt.registerLazySingleton<HomeCubit>(() => HomeCubit());
  // getIt.registerLazySingleton<MyRepo>(() => MyRepo(getIt()));

}

