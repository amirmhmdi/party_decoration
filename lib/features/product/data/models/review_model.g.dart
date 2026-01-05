// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => _ReviewModel(
  writer: json['writer'] as String,
  reviewText: json['reviewText'] as String,
  location: json['location'] as String,
);

Map<String, dynamic> _$ReviewModelToJson(_ReviewModel instance) =>
    <String, dynamic>{
      'writer': instance.writer,
      'reviewText': instance.reviewText,
      'location': instance.location,
    };
