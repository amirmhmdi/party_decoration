import 'package:party_decoration/core/utils/typedefs.dart';
import 'package:party_decoration/features/product/domain/entities/product_entity.dart';

abstract class ProductRepo {
  const ProductRepo();

  ResultFuture<ProductEntity> getProduct(
    String productId, {
    bool usingCache = true,
  });
}
