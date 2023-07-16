import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static Future<void> initEnvironment() async {
    await dotenv.load(fileName: ".env");
  }

  // WhatsApp URLs
  static String androidWhatsappUrl = dotenv.env['ANDROID_WHATSAPP_URL'] ??
      'No ANDROID_WHATSAPP_URL env variable';
  static String iosWhatsappUrl =
      dotenv.env['IOS_WHATSAPP_URL'] ?? 'No IOS_WHATSAPP_URL env variable';

  // API URLs
  static String apiUrl = dotenv.env['API_URL'] ?? 'No API_URL env variable';
}
