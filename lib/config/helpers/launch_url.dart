import 'dart:io';

import 'package:products_app/config/config.dart' show Environment;
import 'package:url_launcher/url_launcher.dart';

class LaunchUrlHelper {
  static Future<void> redirectToWhatsapp() async {
    final iosWhatsappUrl = Environment.iosWhatsappUrl;
    final androidUrlWhatsapp = Environment.androidWhatsappUrl;

    try {
      if (Platform.isAndroid) {
        await launchUrl(Uri.parse(androidUrlWhatsapp));
        return;
      }

      if (Platform.isIOS) {
        await launchUrl(Uri.parse(iosWhatsappUrl));
        return;
      }
    } on Exception catch (e) {
      throw Exception(e);
    }
  }
}
