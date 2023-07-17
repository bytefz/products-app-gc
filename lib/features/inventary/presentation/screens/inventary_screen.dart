import 'package:flutter/material.dart';

class InventaryScreen extends StatelessWidget {
  const InventaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Inventary Screen',
          style: textTheme.titleMedium?.copyWith(
            color: colors.onPrimary,
          ),
        ),
        foregroundColor: colors.onPrimary,
        backgroundColor: colors.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list_rounded),
            onPressed: () {},
          ),
        ],
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          ),
        ),
      ),
      body: const _InventaryView(),
    );
  }
}

class _InventaryView extends StatelessWidget {
  const _InventaryView();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Inventary Screen'),
      ),
    );
  }
}
