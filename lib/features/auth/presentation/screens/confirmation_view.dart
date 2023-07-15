import 'dart:async';

import 'package:flutter/material.dart';

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
            _ContentTextWidget(),
            Spacer(),
          ],
        ),
      ),
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

      if (points.length < 3) {
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
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
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
          ),
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
      'assets/imgs/desk-lamp.png',
      width: size.width * 0.7,
      height: size.height * 0.4,
      filterQuality: FilterQuality.high,
    );
  }
}
