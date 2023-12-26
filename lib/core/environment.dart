import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static const String _prodEnvFile = ".env";

  // ignore: unused_field
  static String get fileName => _prodEnvFile;

  static String get apiUrl => dotenv.env['API_URL']!;
}
