import 'package:fitfolio/core/environment.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class Initializer {
  static Future<void> init() async {
    try {
      await _initEnvironment();
      _initScreenPreference();
    } catch (err) {
      rethrow;
    }
  }

  static Future<void> _initEnvironment() async {
    await dotenv.load(fileName: Environment.fileName);
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
