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
  const _ConfirmationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Text('ConfirmationView'),
      ),
    );
  }
}
