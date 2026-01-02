import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_decoration/features/product/domain/entities/faq_entity.dart';
import 'package:party_decoration/features/product/domain/entities/review_entity.dart';
import 'package:party_decoration/features/product/domain/entities/enum_product_tag.dart';

part 'product_entity.freezed.dart';

@freezed
abstract class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    required String name,
    required String description,
    required double price,
    required double discount,
    required double rate,
    required ReviewEntity review,
    required List<String> packageInclutionList,
    required List<FaqEntity> faqList,
    required List<String> deliveryDetails,
    required List<String> careInfoList,
    required EnumProductTag productTag,
    DateTime? cacheTime,
  }) = _ProductEntity;
}
