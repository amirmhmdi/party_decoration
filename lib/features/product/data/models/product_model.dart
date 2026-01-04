import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_decoration/core/utils/constans/enums/enum_product_tag.dart';
import 'package:party_decoration/features/product/data/models/faq_model.dart';
import 'package:party_decoration/features/product/data/models/review_model.dart';
import 'package:party_decoration/features/product/domain/entities/product_entity.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
abstract class ProductModel with _$ProductModel {
  const ProductModel._();

  const factory ProductModel({
    required String name,
    required String description,
    required List<String> images,
    required double price,
    required double discount,
    required double rate,
    required ReviewModel review,
    required List<String> packageInclutionList,
    required List<FaqModel> faqList,
    required List<String> deliveryDetails,
    required List<String> careInfoList,
    required EnumProductTag productTag,
    DateTime? cacheTime,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);

  factory ProductModel.formEntity(ProductEntity productEntity) => ProductModel(
    name: productEntity.name,
    description: productEntity.description,
    images: productEntity.images,
    price: productEntity.price,
    discount: productEntity.discount,
    rate: productEntity.rate,
    review: ReviewModel.formEntity(productEntity.review),
    packageInclutionList: productEntity.packageInclutionList,
    faqList: productEntity.faqList
        .map((faqEntity) => FaqModel.fromEntity(faqEntity))
        .toList(),
    deliveryDetails: productEntity.deliveryDetails,
    careInfoList: productEntity.careInfoList,
    productTag: productEntity.productTag,
    cacheTime: productEntity.cacheTime,
  );

  ProductEntity toEntity() => ProductEntity(
    name: name,
    description: description,
    images: images,
    price: price,
    discount: discount,
    rate: rate,
    review: review.toEntity(),
    packageInclutionList: packageInclutionList,
    faqList: faqList.map((FaqModel faqModel) => faqModel.toEntity()).toList(),
    deliveryDetails: deliveryDetails,
    careInfoList: careInfoList,
    productTag: productTag,
    cacheTime: cacheTime,
  );
}
