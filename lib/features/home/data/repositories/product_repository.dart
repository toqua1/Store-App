import '../models/product_model.dart';

class ProductRepository {
  final Map<String, List<Product>> _productData = {
    'bestSelling': [
      Product(id: 1, name: 'Stitch Keychain', price: 29.99, image: 'assets/images/best_seller_1.png'),
      Product(id: 2, name: 'Baby Girl Dress', price: 49.99, image: 'assets/images/best_seller_2.png'),
      Product(id: 3, name: 'Jacket Jeans', price: 19.99, image: 'assets/images/best_seller_3.jpg'),
      Product(id: 4, name: 'Jacket Jeans', price: 39.99, image: 'assets/images/best_seller_4.jpg'),
      Product(id: 5, name: 'Black Dress', price: 24.99, image: 'assets/images/best_seller_5.jpg'),
    ],
    'newArrival': [
      Product(id: 1, name: 'Printed bag', price: 34.99, image: 'assets/images/new_arrival_1.png'),
      Product(id: 2, name: 'Notebook', price: 54.99, image: 'assets/images/new_arrival_2.png'),
      Product(id: 3, name: 'Summer Clothes', price: 21.99, image: 'assets/images/new_arrival_3.jpg'),
      Product(id: 4, name: 'Winter Clothes', price: 42.99, image: 'assets/images/new_arrival_4.jpg'),
      Product(id: 5, name: 'Eid Clothes', price: 29.49, image: 'assets/images/new_arrival_5.jpg'),
    ],
    'recommendedForYou': [
      Product(id: 1, name: 'Leather Jacket', price: 27.99, image: 'assets/images/recommended_1.png'),
      Product(id: 2, name: 'Dog Medal', price: 47.99, image: 'assets/images/recommended_2.png'),
      Product(id: 3, name: 'Baby Clothes', price: 18.99, image: 'assets/images/recommended_3.jpg'),
      Product(id: 4, name: 'Girl clothes', price: 36.99, image: 'assets/images/recommended_4.jpg'),
      Product(id: 5, name: 'Sweater', price: 25.99, image: 'assets/images/recommended_5.jpg'),
    ],
  };

  Map<String, List<Product>> getProducts() {
    return _productData;
  }
}
