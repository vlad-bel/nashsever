import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nash_sever/const/app_assets.dart';
import 'package:nash_sever/di/injectable_init.dart';
import 'package:nash_sever/presentation/splash_page/bloc/splash_page_cubit.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    getIt.get<SplashPageCubit>().splashScreenInit();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Image.asset(
          AppAssets.splashPageBg,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
