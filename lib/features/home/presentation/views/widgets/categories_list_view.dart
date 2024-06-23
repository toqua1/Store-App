import 'package:flutter/material.dart';
import 'package:store_app/features/home/presentation/views/widgets/categories_item.dart';
import '../../../data/models/categories_model.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({super.key});

  final List<CategoriesModel> items = [
    CategoriesModel(img: 'assets/images/tshirt.png', title: 'Fashion'),
    CategoriesModel(img: 'assets/images/dice.png', title: 'Games'),
    CategoriesModel(img: 'assets/images/Glasses.png', title: 'Accessories'),
    CategoriesModel(img: 'assets/images/Book Blank.png', title: 'Books'),
    CategoriesModel(img: 'assets/images/palette (2).png', title: 'Artifacts'),
  ];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWeb = screenWidth > 800;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Center(
        child: SizedBox(/*try flexable if there is an error*/
          width: isWeb ? 600 : double.infinity,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Row(
              mainAxisAlignment: isWeb
                  ? MainAxisAlignment.spaceBetween
                  : MainAxisAlignment.start,
              children: items
                  .map(
                    (item) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: isWeb?20:0),
                  child: CategoriesItem(
                    image: item.img,
                    title: item.title,
                  ),
                ),
              )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
