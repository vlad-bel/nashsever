import 'package:flutter/material.dart';
import 'package:nash_sever/di/injectable_init.dart';
import 'package:nash_sever/presentation/app.dart';

void main() {
  configureDependencies();
  runApp(const App());
}


