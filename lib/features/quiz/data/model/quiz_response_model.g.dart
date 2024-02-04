// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizResponseModelImpl _$$QuizResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$QuizResponseModelImpl(
      id: json['id'] as int?,
      dateCreated: json['dateCreated'] as String?,
      dateModified: json['dateModified'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      questions: (json['questions'] as List<dynamic>?)
          ?.map((e) => Questions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizResponseModelImplToJson(
        _$QuizResponseModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateModified': instance.dateModified,
      'title': instance.title,
      'description': instance.description,
      'questions': instance.questions,
    };

_$QuestionsImpl _$$QuestionsImplFromJson(Map<String, dynamic> json) =>
    _$QuestionsImpl(
      id: json['id'] as int?,
      dateCreated: json['dateCreated'] as String?,
      dateModified: json['dateModified'] as String?,
      label: json['label'] as String?,
      hasMultipleChoices: json['has_multiple_choices'] as bool?,
      choices: (json['choices'] as List<dynamic>?)
          ?.map((e) => Choices.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuestionsImplToJson(_$QuestionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateModified': instance.dateModified,
      'label': instance.label,
      'has_multiple_choices': instance.hasMultipleChoices,
      'choices': instance.choices,
    };

_$ChoicesImpl _$$ChoicesImplFromJson(Map<String, dynamic> json) =>
    _$ChoicesImpl(
      id: json['id'] as int?,
      dateCreated: json['dateCreated'] as String?,
      dateModified: json['dateModified'] as String?,
      choiceTitle: json['choice_title'] as String?,
      isCorrect: json['is_correct'] as bool?,
      question: json['question'] as int?,
    );

Map<String, dynamic> _$$ChoicesImplToJson(_$ChoicesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'dateCreated': instance.dateCreated,
      'dateModified': instance.dateModified,
      'choice_title': instance.choiceTitle,
      'is_correct': instance.isCorrect,
      'question': instance.question,
    };
