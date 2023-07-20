import 'package:flutter/material.dart';
import 'package:products_app/features/inventary/presentation/widgets/card_inventary_widget.dart';

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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InventaryItem(
            dateInventary: '2021-10-10',
            totalProductsInventary: 4,
            urlProductBrands: [],
            urlProductImages: [],
          );
        },
      ),
    );
  }
}
