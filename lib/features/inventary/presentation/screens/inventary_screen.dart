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
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Inventario: 2021-10-10',
                  style: textTheme.bodyLarge?.copyWith(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    leading: GridTile(child: const Icon(Icons.inventory)),
                    title: Text('Item $index'),
                    subtitle: Text('Item $index description'),
                    trailing: const Icon(Icons.arrow_forward_ios_rounded),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
