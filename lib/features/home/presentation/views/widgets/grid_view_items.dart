import 'package:flutter/material.dart';
import 'package:store_app/features/home/data/models/product_model.dart';
import 'item_container.dart';

class GridViewItems extends StatelessWidget {
  final List<Product> items;

  const GridViewItems({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 800),
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(), // Prevents the grid from scrolling independently
          shrinkWrap: true, // Shrink to fit the content
          gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
            // childAspectRatio: 0.75,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return  ItemContainer(item: item);
          },
        ),
      ),
    );
  }
}
