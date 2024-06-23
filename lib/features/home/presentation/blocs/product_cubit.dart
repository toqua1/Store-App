import 'package:bloc/bloc.dart';
import '../../data/models/product_model.dart';
import '../../data/repositories/product_repository.dart';
import 'package:meta/meta.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<Map<String,List<Product>>> {
  final ProductRepository repository;

  ProductCubit(this.repository) : super({});

  void fetchProducts() {
    final products = repository.getProducts();
    emit(products);
  }
}
