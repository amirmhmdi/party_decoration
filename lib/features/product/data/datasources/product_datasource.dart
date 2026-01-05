import 'package:party_decoration/features/product/data/models/product_model.dart';

abstract class ProductDatasource {
  const ProductDatasource();

  Future<ProductModel> getProduct(String productId);
}
