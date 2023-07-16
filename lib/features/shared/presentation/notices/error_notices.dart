import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:products_app/features/shared/shared.dart' show ErrorModel;

class ErrorNotices {
  static void showErrorBanner(
    BuildContext context,
    ErrorModel error, {
    Color? previusColor,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (scaffoldMessenger.mounted) {
      scaffoldMessenger.hideCurrentMaterialBanner();
    }

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(232, 67, 65, 1),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: AutoSizeText(
          error.message,
          presetFontSizes: const [14, 13, 12],
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
        elevation: 2,
        actions: [
          TextButton(
            onPressed: () {
              Future.delayed(const Duration(milliseconds: 300), () {
                scaffoldMessenger.hideCurrentMaterialBanner();
                SystemChrome.setSystemUIOverlayStyle(
                  SystemUiOverlayStyle(
                    statusBarColor: previusColor ?? Colors.transparent,
                    statusBarIconBrightness: Brightness.dark,
                  ),
                );
              });

              error.onError?.call();
            },
            child: const Text(
              'Cerrar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
