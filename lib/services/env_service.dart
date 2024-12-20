import 'package:flutter_dotenv/flutter_dotenv.dart';

class EnvService {
  String get apiKey =>
      dotenv.env['APPWRITE_PROJECT_ID'] ?? 'ERROR - ENV FILE NOT LOADED';
}
