import 'package:flutter/material.dart';
import 'package:nash_sever/di/injectable_init.dart';
import 'package:nash_sever/navigation/app_router.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  final _appRouter = getIt.get<AppRouter>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Наш Север',
      routerConfig: _appRouter.config(),
    );
  }
}
