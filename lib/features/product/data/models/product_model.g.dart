// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductModel _$ProductModelFromJson(Map<String, dynamic> json) =>
    _ProductModel(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      images: (json['images'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toDouble(),
      discount: (json['discount'] as num).toDouble(),
      rate: (json['rate'] as num).toDouble(),
      review: ReviewModel.fromJson(json['review'] as Map<String, dynamic>),
      packageInclutionList: (json['packageInclutionList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      faqList: (json['faqList'] as List<dynamic>)
          .map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      deliveryDetails: (json['deliveryDetails'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      careInfoList: (json['careInfoList'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      productTag: $enumDecode(_$EnumProductTagEnumMap, json['productTag']),
      cacheTime: json['cacheTime'] == null
          ? null
          : DateTime.parse(json['cacheTime'] as String),
    );

Map<String, dynamic> _$ProductModelToJson(_ProductModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'images': instance.images,
      'price': instance.price,
      'discount': instance.discount,
      'rate': instance.rate,
      'review': instance.review,
      'packageInclutionList': instance.packageInclutionList,
      'faqList': instance.faqList,
      'deliveryDetails': instance.deliveryDetails,
      'careInfoList': instance.careInfoList,
      'productTag': _$EnumProductTagEnumMap[instance.productTag]!,
      'cacheTime': instance.cacheTime?.toIso8601String(),
    };

const _$EnumProductTagEnumMap = {
  EnumProductTag.trending: 'trending',
  EnumProductTag.exclusive: 'exclusive',
  EnumProductTag.newAdded: 'newAdded',
  EnumProductTag.bestSeller: 'bestSeller',
};
