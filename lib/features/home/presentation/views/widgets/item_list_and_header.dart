// import 'package:flutter/material.dart';
// import 'item_list_header.dart';
// import 'list_view_items.dart';
// import 'grid_view_items.dart';
//
// class ItemListAndHeader extends StatelessWidget {
//   final String title;
//   final List<Map<String, String>> items;
//
//   const ItemListAndHeader({super.key, required this.title, required this.items});
//
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     bool isWeb = screenWidth > 800;
//
//     return Column(
//       children: [
//         ItemListHeader(title: title),
//         SizedBox(
//           height: isWeb ? 600 : 200,
//           child: isWeb
//               ? GridViewItems(items: items)
//               : ListViewItems(items: items),
//         ),
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'grid_view_items.dart';
import 'list_view_items.dart';
import 'item_list_header.dart';
import '../../../data/models/product_model.dart';

class ItemListAndHeader extends StatelessWidget {
  final String title;
  final List<Product> items;

  const ItemListAndHeader({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isWeb = screenWidth > 800;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ItemListHeader(title: title),
        SizedBox(
          height: isWeb ? 600 : 200,
          child: isWeb
              ? GridViewItems(items: items)
              : ListViewItems(items: items),
        ),
      ],
    );
  }
}
