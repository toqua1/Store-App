import 'package:flutter/material.dart';

import '../../../data/models/product_model.dart';

class ItemImageStack extends StatelessWidget {
  const ItemImageStack({
    super.key,
    required this.item,
  });

  final Product item;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            item.image,
            height: 120,
            width: 150,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 10.0,
          right: 0,
          child: Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200] ,
            ),
            child: Image.asset('assets/images/heart.png'),
          ),
        ),
      ],
    );
  }
}