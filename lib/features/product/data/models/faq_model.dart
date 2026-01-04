import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/faq_entity.dart';

part 'faq_model.freezed.dart';
part 'faq_model.g.dart';

@freezed
abstract class FaqModel with _$FaqModel {
  const FaqModel._();

  const factory FaqModel({
    String? id,
    required String question,
    required String answer,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);

  factory FaqModel.fromEntity(FaqEntity entity) =>
      FaqModel(id: entity.id, question: entity.question, answer: entity.answer);

  FaqEntity toEntity() => FaqEntity(id: id, question: question, answer: answer);
}
