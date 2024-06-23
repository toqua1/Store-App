// item_container.dart
import 'package:flutter/material.dart';
import 'package:store_app/features/home/data/models/product_model.dart';
import 'item_details.dart';
import 'item_image_stack.dart';

class ItemContainer extends StatelessWidget {
  const ItemContainer({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWeb = screenWidth > 800;

    return Container(
      width: 150,
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ItemImageStack(item: item),
          const SizedBox(height: 5),
          ItemDetails(item: item),
        ],
      ),
    );
  }
}
