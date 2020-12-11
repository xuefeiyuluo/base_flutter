import 'package:get_it/get_it.dart';
import 'package:base_flutter/module/storage/local_storage_service.dart';
import 'package:base_flutter/module/splash/viewmodel/splash_model.dart';
import 'package:base_flutter/module/main/repository/main_repository.dart';

GetIt locator = GetIt.instance;

Future setupLocator() async {
  var instance = await LocalStorageService.getInstance();
  locator.registerSingleton<LocalStorageService>(instance);

  locator.registerLazySingleton(() => MainRepository());


  locator.registerFactory(() => SplashModel());
}
