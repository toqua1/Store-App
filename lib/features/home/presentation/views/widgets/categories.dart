import 'package:flutter/material.dart';
import 'package:store_app/features/home/presentation/views/widgets/categories_list_view.dart';
import 'item_list_header.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ItemListHeader(title: 'Categories'),
         SizedBox(
            height:
                // : MediaQuery.of(context).size.width>800?200:
            100,
            child: CategoriesListView(),
          ),
      ],
    );
  }
}
