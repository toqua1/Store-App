// import 'package:flutter/material.dart';
// import 'package:store_app/features/home/presentation/views/widgets/categories.dart';
// import 'package:store_app/features/home/presentation/views/widgets/home_header.dart';
// import 'package:store_app/features/home/presentation/views/widgets/home_search.dart';
// import 'package:store_app/features/home/presentation/views/widgets/home_slider.dart';
// import 'package:store_app/features/home/presentation/views/widgets/item_list_and_header.dart';
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: Colors.white,
//       appBar: HomeHeader(),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.only(left: 10),
//           child: Column(
//             children: [
//               HomeSearch(),
//               HomeSlider(),
//               Categories(),
//               ItemListAndHeader(
//                 title: "Best Selling",
//                 items: [
//                   {"name": "Item 1", "price": "EGP 55", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 2", "price": "EGP 230", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 3", "price": "EGP 90", "image": "assets/images/best_seller_1.png"},
//                   // Add more items here
//                 ],
//               ),
//               ItemListAndHeader(
//                 title: "New Arrival",
//                 items: [
//                   {"name": "Item 1", "price": "EGP 55", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 2", "price": "EGP 230", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 3", "price": "EGP 90", "image": "assets/images/best_seller_1.png"},
//                   // Add more items here
//                 ],
//               ),
//               ItemListAndHeader(
//                 title: "Recommended for you",
//                 items: [
//                   {"name": "Item 1", "price": "EGP 55", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 2", "price": "EGP 230", "image": "assets/images/best_seller_1.png"},
//                   {"name": "Item 3", "price": "EGP 90", "image": "assets/images/best_seller_1.png"},
//                   // Add more items here
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../blocs/product_cubit.dart';
import '../../data/models/product_model.dart';
import 'widgets/home_header.dart';
import 'widgets/item_list_and_header.dart';
import 'widgets/home_search.dart';
import 'widgets/home_slider.dart';
import 'widgets/categories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final productCubit = BlocProvider.of<ProductCubit>(context);

    // Fetch products when HomeScreen is first built
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      productCubit.fetchProducts();
    });

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const HomeHeader(),
      body: BlocBuilder<ProductCubit, Map<String, List<Product>>>(
        builder: (context, productData) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const HomeSearch(),
                        const HomeSlider(),
                        const Categories(),
                        ...productData.entries.map((entry) {
                          return ItemListAndHeader(
                            title: entry.key,
                            items: entry.value,
                          );
                        }).toList(),
                      ],
                    ),
                  ),
                );
        },
      ),
    );
  }
}
