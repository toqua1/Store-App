import 'package:flutter/material.dart';
import 'package:store_app/features/home/presentation/views/widgets/see_all_next_button.dart';
import '../../../../../core/utils/app_styles.dart';

class ItemListHeader extends StatelessWidget {
  const ItemListHeader({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWeb = screenWidth > 800;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: isWeb?200:16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppStyles.styleSemiBold22(),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'See all' ,
                  style: AppStyles.styleMedium14,),
              ),
              const SeeAllNextButton()
            ],
          ),
        ],
      ),
    );
  }
}