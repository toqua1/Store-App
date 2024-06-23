import 'package:flutter/material.dart';
import 'package:store_app/features/home/data/models/product_model.dart';
import 'item_container.dart';

class ListViewItems extends StatelessWidget {
  const ListViewItems({
    super.key,
    required this.items,
  });

  final List<Product> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return ItemContainer(item: item);
      },
    );
  }
}
