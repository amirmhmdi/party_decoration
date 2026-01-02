import 'package:freezed_annotation/freezed_annotation.dart';

part 'review_entity.freezed.dart';

@freezed
abstract class ReviewEntity with _$ReviewEntity {
  const factory ReviewEntity({
    required String writer,
    required String reviewText,
    required String location,
  }) = _ReviewEntity;
}
