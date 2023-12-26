import 'package:fitfolio/app.dart';
import 'package:fitfolio/initializer.dart';
import 'package:fitfolio/routes/app_pages.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await Initializer.init();

  final String initialRoute = await Routes.INITIAL;

  runApp(App(initialRoute: initialRoute));
}
