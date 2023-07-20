import 'package:flutter/material.dart';

import 'package:products_app/config/config.dart' show HumanFormats;

const double cardHeight = 105;

class InventaryItem extends StatelessWidget {
  const InventaryItem({
    super.key,
    required this.dateInventary,
    required this.urlProductImages,
    required this.urlProductBrands,
    required this.totalProductsInventary,
  })  : assert(urlProductImages.length < 4,
            'urlProductImages length must be 4 o less'),
        assert(urlProductBrands.length < 3,
            'urlProductBrands length must be 3 o less');

  final String dateInventary;
  final List urlProductImages;
  final List urlProductBrands;
  final int totalProductsInventary;
  final String statusInventaryString = 'Inventario Terminado';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Inventario: 2021-10-10',
            style: textTheme.bodyLarge?.copyWith(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
          Card(
            elevation: 1,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: SizedBox(
              height: cardHeight,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Row(
                  children: [
                    _ProductImages(
                      urlProductImages: urlProductImages,
                    ),
                    Expanded(
                      child: _InfoProductCard(
                        totalProductsInventary: totalProductsInventary,
                        statusInventaryString: statusInventaryString,
                      ),
                    ),
                    Expanded(
                      child: _BrandProductImages(
                        urlProductBrands: urlProductBrands,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _BrandProductImages extends StatelessWidget {
  const _BrandProductImages({required this.urlProductBrands});

  final List urlProductBrands;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 28),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 1,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: urlProductBrands.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 20,
              color: Colors.amber,
            ),
          );
        },
      ),
    );
  }
}

class _InfoProductCard extends StatelessWidget {
  const _InfoProductCard({
    required this.totalProductsInventary,
    required this.statusInventaryString,
  });

  final int totalProductsInventary;
  final String statusInventaryString;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final totalProductsInventaryFormat =
        HumanFormats.humanReadableNumber(totalProductsInventary);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            statusInventaryString,
            style: textTheme.titleMedium?.copyWith(
              fontSize: 16,
            ),
          ),
          const Spacer(),
          Text(
            'Productos: $totalProductsInventaryFormat',
            style: textTheme.bodyMedium?.copyWith(
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }
}

class _ProductImages extends StatelessWidget {
  const _ProductImages({required this.urlProductImages});

  final List urlProductImages;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cardHeight,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
        ),
        physics: const NeverScrollableScrollPhysics(),
        itemCount: urlProductImages.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.zero,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Container(
              color: Colors.orange,
            ),
          ),
        ),
      ),
    );
  }
}
