import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:nash_sever/navigation/app_router.dart';

final getIt = GetIt.instance;

@injectableInit
void configureDependencies() {
  getIt.registerLazySingleton(() => AppRouter());
}
