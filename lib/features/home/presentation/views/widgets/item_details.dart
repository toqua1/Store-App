import 'package:flutter/material.dart';
import 'package:store_app/features/home/data/models/product_model.dart';

import '../../../../../core/utils/app_styles.dart';
import 'item_details_price.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    super.key,
    required this.item,
  });

  final Product item ;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          item.name!,
          style: AppStyles.styleRegular16,
        ),
        const SizedBox(height: 5),
        ItemDetailsPrice(item: item),
      ],
    );
  }
}
