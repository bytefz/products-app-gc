import 'package:flutter/material.dart';

class CardInventary extends StatelessWidget {
  const CardInventary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        leading: const Icon(Icons.inventory),
        title: const Text('Item'),
        subtitle: const Text('Item description'),
        trailing: const Icon(Icons.arrow_forward_ios_rounded),
        onTap: () {},
      ),
    );
  }
}
