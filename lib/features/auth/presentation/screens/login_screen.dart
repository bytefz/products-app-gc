import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:go_router/go_router.dart';

import 'package:products_app/config/config.dart';
import 'package:products_app/features/shared/presentation/presentation.dart';
import 'package:products_app/features/shared/shared.dart';
import 'package:products_app/features/auth/presentation/presentation.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Spacer(),
                _IconLogin(),
                SizedBox(height: 20),
                _LoginView(),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginView extends StatelessWidget {
  const _LoginView();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _TitleLogin(),
        SizedBox(height: 20),
        _LoginForm(),
        SizedBox(height: 20),
        _ForgotPasswordWidget(),
        SizedBox(height: 20),
        _LoginButtons(),
        SizedBox(height: 30),
        _NotAccountWidget(),
      ],
    );
  }
}

class _NotAccountWidget extends StatelessWidget {
  const _NotAccountWidget();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const AutoSizeText(
          '¿Tienes problemas? ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: AutoSizeText(
            'Comunícate con nosotros',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: colors.primary,
            ),
            maxFontSize: 16,
            minFontSize: 12,
            stepGranularity: 2,
          ),
        ),
      ],
    );
  }
}

class _LoginButtons extends StatelessWidget {
  const _LoginButtons();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ButtonLargeWidget(
          onPressed: () => context.push(Routes.updateInfoUser),
          child: const AutoSizeText(
            'Ingresar',
            maxFontSize: 18,
            minFontSize: 14,
            presetFontSizes: [18, 16, 14],
          ),
        ),
        const SizedBox(height: 20),
        const _LineORLogin(),
        const SizedBox(height: 20),
        ButtonLargeWidget(
          onPressed: () {},
          color: Colors.grey[200],
          child: Row(
            children: [
              Image.asset(
                LocalImagesDataSource.googleLogoPath,
                height: 30,
              ),
              const SizedBox(width: 50),
              const AutoSizeText(
                'Ingresa con Google',
                maxFontSize: 18,
                minFontSize: 14,
                presetFontSizes: [18, 16, 14],
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _ForgotPasswordWidget extends StatelessWidget {
  const _ForgotPasswordWidget();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: AutoSizeText(
            '¿Olvidaste tu contraseña?',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: colors.primary,
            ),
          ),
        ),
      ],
    );
  }
}

class _TitleLogin extends StatelessWidget {
  const _TitleLogin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AutoSizeText(
      'Inventario GC',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextInputPrimary(
          hintText: 'Correo',
          icon: Icon(Icons.email_outlined),
        ),
        const SizedBox(height: 20),
        TextInputPrimary(
          hintText: 'Contraseña',
          icon: const Icon(Icons.lock_sharp),
          suffixIcon: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.remove_red_eye_outlined),
          ),
        ),
      ],
    );
  }
}

class _LineORLogin extends StatelessWidget {
  const _LineORLogin();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 1,
          width: size.width * .3,
          color: Colors.grey,
        ),
        const AutoSizeText(
          '  OR  ',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        Container(
          height: 1,
          width: size.width * .3,
          color: Colors.grey,
        ),
      ],
    );
  }
}

class _IconLogin extends StatelessWidget {
  const _IconLogin();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Image.asset(
      LocalImagesDataSource.loginImagePath,
      height: size.height * .28,
    );
  }
}
