import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:party_decoration/features/product/domain/entities/review_entity.dart';

part 'review_model.freezed.dart';
part 'review_model.g.dart';

@freezed
abstract class ReviewModel with _$ReviewModel {
  const ReviewModel._();

  const factory ReviewModel({
    required String writer,
    required String reviewText,
    required String location,
  }) = _ReviewModel;

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);

  factory ReviewModel.formEntity(ReviewEntity reviewEntity) => ReviewModel(
    writer: reviewEntity.writer,
    reviewText: reviewEntity.reviewText,
    location: reviewEntity.location,
  );

  ReviewEntity toEntity() =>
      ReviewEntity(writer: writer, reviewText: reviewText, location: location);
}
