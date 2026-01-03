import 'package:party_decoration/core/utils/typedefs.dart';
import 'package:party_decoration/features/product/domain/entities/product_entity.dart';
import 'package:party_decoration/features/product/domain/repositories/product_repo.dart';

class GetProductUsecase {
  const GetProductUsecase({required this.repo});

  final ProductRepo repo;

  ResultFuture<ProductEntity> call(
    String productId, {
    bool usingCache = true,
  }) => repo.getProduct(productId);
}
