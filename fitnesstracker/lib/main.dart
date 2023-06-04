import 'package:fitnesstracker/injection.dart';
import 'package:fitnesstracker/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureDependencies(Environment.dev);
  runApp(AppWidget());
}
