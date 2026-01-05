import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:party_decoration/core/errors/exceptions.dart';
import 'package:party_decoration/core/errors/failures.dart';
import 'package:party_decoration/core/utils/typedefs.dart';
import 'package:party_decoration/features/product/data/datasources/product_api_datasource.dart';
import 'package:party_decoration/features/product/data/datasources/product_cache_datasource.dart';
import 'package:party_decoration/features/product/data/models/product_model.dart';
import 'package:party_decoration/features/product/domain/entities/product_entity.dart';
import 'package:party_decoration/features/product/domain/repositories/product_repo.dart';

class ProductRepoImpl implements ProductRepo {
  const ProductRepoImpl({
    required this.productApiDatasource,
    required this.productCacheDatasource,
  });

  final ProductApiDatasource productApiDatasource;
  final ProductCacheDatasource productCacheDatasource;

  @override
  ResultFuture<ProductEntity> getProduct(
    String productId, {
    bool usingCache = true,
  }) async {
    ProductModel productModel;
    if (usingCache) {
      try {
        productModel = await productCacheDatasource.getProduct(productId);
        return Right(productModel.toEntity());
      } on CacheException catch (e) {
        debugPrint(e.message);
      }
    }

    try {
      productModel = await productApiDatasource.getProduct(productId);
      try {
        productCacheDatasource.putProductInCache(productModel);
      } on CacheException catch (e) {
        debugPrint(e.message);
      }
      return Right(productModel.toEntity());
    } on ServerException catch (e) {
      return left(ServerFailure(message: e.message, statusCode: e.statusCode));
    } catch (e) {
      debugPrint(e.toString());
      return Left(
        ServerFailure(
          message: "Something bad happened : ${e.toString()}",
          statusCode: 500,
        ),
      );
    }
  }
}
