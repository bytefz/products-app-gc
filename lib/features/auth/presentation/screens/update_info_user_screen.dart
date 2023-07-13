import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

import 'package:products_app/features/shared/presentation/presentation.dart';

class UpdateInfoUserScreen extends StatelessWidget {
  const UpdateInfoUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _UpdateInfoUserView(),
    );
  }
}

class _UpdateInfoUserView extends StatelessWidget {
  const _UpdateInfoUserView();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            width: double.infinity,
            height: size.height,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Spacer(),
                _TitleView(),
                SizedBox(height: 30),
                _FormUpdateUser(),
                SizedBox(height: 30),
                _UpdateButton(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _UpdateButton extends StatelessWidget {
  const _UpdateButton();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        ElevatedButton(
          onPressed: () {},
          child: const Text('Actualizar Datos'),
        ),
      ],
    );
  }
}

class _FormUpdateUser extends StatelessWidget {
  const _FormUpdateUser();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Nombre',
          maxFontSize: 18,
          minFontSize: 14,
          stepGranularity: 2,
        ),
        SizedBox(height: 10),
        TextInputSecondary(),
        SizedBox(height: 20),
        AutoSizeText(
          'Apellidos',
          maxFontSize: 18,
          minFontSize: 14,
          stepGranularity: 2,
        ),
        SizedBox(height: 10),
        TextInputSecondary(),
        SizedBox(height: 20),
        AutoSizeText(
          'Correo',
          maxFontSize: 18,
          minFontSize: 14,
          stepGranularity: 2,
        ),
        TextInputSecondary(),
      ],
    );
  }
}

class _TitleView extends StatelessWidget {
  const _TitleView();

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      'Confirma tus Datos',
      style: TextStyle(
        fontWeight: FontWeight.bold,
      ),
      presetFontSizes: [22, 20, 18, 16],
      stepGranularity: 2,
    );
  }
}
