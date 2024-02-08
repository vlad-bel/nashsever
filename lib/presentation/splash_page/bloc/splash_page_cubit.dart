import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:nash_sever/navigation/app_router.dart';

part 'splash_page_cubit.freezed.dart';

part 'splash_page_state.dart';

@LazySingleton()
class SplashPageCubit extends Cubit<SplashPageState> {
  SplashPageCubit(this._appRouter) : super(const _Loaded());

  final AppRouter _appRouter;

  Future splashScreenInit() async {
    await Future.delayed(const Duration(seconds: 3));
    _appRouter.replace(const MainWebViewRoute());
  }
}
