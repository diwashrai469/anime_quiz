// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quiz_response_model.freezed.dart';
part 'quiz_response_model.g.dart';

@freezed
class QuizResponseModel with _$QuizResponseModel {
  factory QuizResponseModel({
    int? id,
    String? dateCreated,
    String? dateModified,
    String? title,
    String? description,
    List<Questions>? questions,
  }) = _QuizResponseModel;

  factory QuizResponseModel.fromJson(Map<String, dynamic> json) =>
      _$QuizResponseModelFromJson(json);
}

@freezed
class Questions with _$Questions {
  factory Questions({
    int? id,
    String? dateCreated,
    String? dateModified,
    String? label,
    @JsonKey(name: "has_multiple_choices") bool? hasMultipleChoices,
    List<Choices>? choices,
  }) = _Questions;

  factory Questions.fromJson(Map<String, dynamic> json) =>
      _$QuestionsFromJson(json);
}

@freezed
class Choices with _$Choices {
  factory Choices({
    int? id,
    String? dateCreated,
    String? dateModified,
    @JsonKey(name: "choice_title") String? choiceTitle,
    @JsonKey(name: "is_correct") bool? isCorrect,
    int? question,
  }) = _Choices;

  factory Choices.fromJson(Map<String, dynamic> json) =>
      _$ChoicesFromJson(json);
}
