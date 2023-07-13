import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class UpdateInfoUserScreen extends StatelessWidget {
  const UpdateInfoUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: SizedBox(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                const AutoSizeText(
                  'Confirma tus Datos',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                  maxFontSize: 22,
                  minFontSize: 16,
                  stepGranularity: 2,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Nombre:'),
                    Text('Apellido:'),
                    Text('Correo:'),
                    Text('Teléfono:'),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text('Actualizar Datos'),
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
