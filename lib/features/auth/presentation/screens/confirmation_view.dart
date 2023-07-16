import 'dart:async';

import 'package:flutter/material.dart';
import 'package:products_app/config/config.dart';
import 'package:products_app/features/shared/shared.dart'
    show ErrorModel, LocalImagesDataSource, ErrorNotices;

class ConfirmationView extends StatelessWidget {
  const ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _ConfirmationView(),
    );
  }
}

class _ConfirmationView extends StatelessWidget {
  const _ConfirmationView();

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Center(
        child: Column(
          children: [
            Spacer(),
            _ImageConfirmation(),
            SizedBox(height: 30),
            _Main(),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class _Main extends StatelessWidget {
  const _Main();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          _ContentTextWidget(),
          SizedBox(height: 30),
          _ButtonForContact(),
        ],
      ),
    );
  }
}

class _ButtonForContact extends StatelessWidget {
  const _ButtonForContact();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          '¿Tienes problemas?',
          style: textTheme.titleMedium?.copyWith(
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 10),
        FilledButton.tonal(
          onPressed: () async {
            try {
              await LaunchUrlHelper.redirectToWhatsapp();
            } on Exception {
              const message = 'No se pudo abrir WhatsApp';
              final error = ErrorModel(message: message);
              ErrorNotices.showErrorBanner(context, error);
            }
          },
          child: Text(
            'Contactar a soporte',
            style: textTheme.bodyMedium?.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class _ContentTextWidget extends StatefulWidget {
  const _ContentTextWidget();

  @override
  State<_ContentTextWidget> createState() => _ContentTextWidgetState();
}

class _ContentTextWidgetState extends State<_ContentTextWidget> {
  String points = '.';

  StreamController<String> streamController =
      StreamController<String>.broadcast();

  _changeLengthPoints() async {
    Future.delayed(const Duration(seconds: 1), () {
      if (streamController.isClosed) return;
      streamController.add(points);

      final lessThanThreePoints = points.length < 3;

      if (lessThanThreePoints) {
        points += '.';
        streamController.add(points);
        _changeLengthPoints();
        return;
      }

      points = '.';
      streamController.add(points);
      _changeLengthPoints();
    });
  }

  @override
  void initState() {
    super.initState();
    _changeLengthPoints();
  }

  @override
  void dispose() async {
    streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    const name = "Antonio";

    return StreamBuilder<String>(
      initialData: '.',
      stream: streamController.stream,
      builder: (context, snapshot) {
        return Column(
          children: [
            Text(
              'Hola $name,',
              textAlign: TextAlign.center,
              style: textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            Text(
              'Espera un momento, estamos confirmando tu cuenta${snapshot.data}',
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                fontSize: 24,
              ),
            ),
          ],
        );
      },
    );
  }
}

class _ImageConfirmation extends StatelessWidget {
  const _ImageConfirmation();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Image.asset(
      LocalImagesDataSource.deskLampImagePath,
      width: size.width * 0.7,
      height: size.height * 0.4,
      filterQuality: FilterQuality.high,
      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
        if (wasSynchronouslyLoaded) {
          return child;
        }

        return AnimatedOpacity(
          opacity: frame == null ? 0 : 1,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeOut,
          child: child,
        );
      },
    );
  }
}
