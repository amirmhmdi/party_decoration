import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:party_decoration/core/errors/exceptions.dart';
import 'package:party_decoration/features/product/data/datasources/product_datasource.dart';
import 'package:party_decoration/features/product/data/models/product_model.dart';

class ProductCacheDatasource implements ProductDatasource {
  const ProductCacheDatasource(this._cacheBox);

  final Box _cacheBox;
  @override
  Future<ProductModel> getProduct(String productId) {
    try {
      if (_cacheBox.keys.contains(productId)) {
        ProductModel productModel = ProductModel.fromJson(
          jsonDecode(_cacheBox.get(productId)),
        );
        return Future.value(productModel);
      } else {
        throw CacheException(message: "Product is not in Cache");
      }
    } on CacheException {
      rethrow;
    } catch (e) {
      throw CacheException(message: "Cache Error occurred: ${e.toString()}");
    }
  }

  void putProductInCache(ProductModel productModel) {
    try {
      _cacheBox.put(productModel.id, jsonEncode(productModel.toJson()));
    } catch (e) {
      throw CacheException(message: "Error in Saving in cache");
    }
  }
}
