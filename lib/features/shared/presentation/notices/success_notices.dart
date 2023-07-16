import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:products_app/features/shared/shared.dart' show SuccessModel;

class SuccessNotices {
  static void showSuccesBanner(
    BuildContext context,
    SuccessModel success, {
    Color? previusColor,
  }) {
    final scaffoldMessenger = ScaffoldMessenger.of(context);

    if (scaffoldMessenger.mounted) {
      scaffoldMessenger.hideCurrentMaterialBanner();
    }

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color.fromRGBO(99, 179, 114, 1),
        statusBarIconBrightness: Brightness.light,
      ),
    );

    ScaffoldMessenger.of(context).showMaterialBanner(
      MaterialBanner(
        content: Text(
          success.message,
          style: const TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green.shade400,
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

              success.onSuccess?.call();
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
