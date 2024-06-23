import 'package:flutter/material.dart';
import 'package:store_app/features/home/data/models/product_model.dart';
import '../../../../../core/utils/app_styles.dart';

class ItemDetailsPrice extends StatelessWidget {
  const ItemDetailsPrice({
    super.key,
    required this.item,
  });

  final Product item ;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item.price.toString(),
          style: AppStyles.styleBold16,
        ),
        const Spacer(),
        Row(
          children: [
            Container(
                width: 22,
                height: 22,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset('assets/images/Ellipse 106.png')),
            const SizedBox(width: 5),
            Container(
              width: 22,
              height: 22,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Icon(Icons.add,size:17,color: Colors.white,),
            ),
          ],
        )
      ],
    );
  }
}
