// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quiz_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuizResponseModel _$QuizResponseModelFromJson(Map<String, dynamic> json) {
  return _QuizResponseModel.fromJson(json);
}

/// @nodoc
mixin _$QuizResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get dateCreated => throw _privateConstructorUsedError;
  String? get dateModified => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Questions>? get questions => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuizResponseModelCopyWith<QuizResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuizResponseModelCopyWith<$Res> {
  factory $QuizResponseModelCopyWith(
          QuizResponseModel value, $Res Function(QuizResponseModel) then) =
      _$QuizResponseModelCopyWithImpl<$Res, QuizResponseModel>;
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      String? title,
      String? description,
      List<Questions>? questions});
}

/// @nodoc
class _$QuizResponseModelCopyWithImpl<$Res, $Val extends QuizResponseModel>
    implements $QuizResponseModelCopyWith<$Res> {
  _$QuizResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? questions = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value.questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuizResponseModelImplCopyWith<$Res>
    implements $QuizResponseModelCopyWith<$Res> {
  factory _$$QuizResponseModelImplCopyWith(_$QuizResponseModelImpl value,
          $Res Function(_$QuizResponseModelImpl) then) =
      __$$QuizResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      String? title,
      String? description,
      List<Questions>? questions});
}

/// @nodoc
class __$$QuizResponseModelImplCopyWithImpl<$Res>
    extends _$QuizResponseModelCopyWithImpl<$Res, _$QuizResponseModelImpl>
    implements _$$QuizResponseModelImplCopyWith<$Res> {
  __$$QuizResponseModelImplCopyWithImpl(_$QuizResponseModelImpl _value,
      $Res Function(_$QuizResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? questions = freezed,
  }) {
    return _then(_$QuizResponseModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: freezed == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Questions>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuizResponseModelImpl implements _QuizResponseModel {
  _$QuizResponseModelImpl(
      {this.id,
      this.dateCreated,
      this.dateModified,
      this.title,
      this.description,
      final List<Questions>? questions})
      : _questions = questions;

  factory _$QuizResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuizResponseModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? dateCreated;
  @override
  final String? dateModified;
  @override
  final String? title;
  @override
  final String? description;
  final List<Questions>? _questions;
  @override
  List<Questions>? get questions {
    final value = _questions;
    if (value == null) return null;
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'QuizResponseModel(id: $id, dateCreated: $dateCreated, dateModified: $dateModified, title: $title, description: $description, questions: $questions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuizResponseModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCreated, dateModified,
      title, description, const DeepCollectionEquality().hash(_questions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      __$$QuizResponseModelImplCopyWithImpl<_$QuizResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuizResponseModelImplToJson(
      this,
    );
  }
}

abstract class _QuizResponseModel implements QuizResponseModel {
  factory _QuizResponseModel(
      {final int? id,
      final String? dateCreated,
      final String? dateModified,
      final String? title,
      final String? description,
      final List<Questions>? questions}) = _$QuizResponseModelImpl;

  factory _QuizResponseModel.fromJson(Map<String, dynamic> json) =
      _$QuizResponseModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get dateCreated;
  @override
  String? get dateModified;
  @override
  String? get title;
  @override
  String? get description;
  @override
  List<Questions>? get questions;
  @override
  @JsonKey(ignore: true)
  _$$QuizResponseModelImplCopyWith<_$QuizResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Questions _$QuestionsFromJson(Map<String, dynamic> json) {
  return _Questions.fromJson(json);
}

/// @nodoc
mixin _$Questions {
  int? get id => throw _privateConstructorUsedError;
  String? get dateCreated => throw _privateConstructorUsedError;
  String? get dateModified => throw _privateConstructorUsedError;
  String? get label => throw _privateConstructorUsedError;
  @JsonKey(name: "has_multiple_choices")
  bool? get hasMultipleChoices => throw _privateConstructorUsedError;
  List<Choices>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionsCopyWith<Questions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsCopyWith<$Res> {
  factory $QuestionsCopyWith(Questions value, $Res Function(Questions) then) =
      _$QuestionsCopyWithImpl<$Res, Questions>;
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      String? label,
      @JsonKey(name: "has_multiple_choices") bool? hasMultipleChoices,
      List<Choices>? choices});
}

/// @nodoc
class _$QuestionsCopyWithImpl<$Res, $Val extends Questions>
    implements $QuestionsCopyWith<$Res> {
  _$QuestionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? label = freezed,
    Object? hasMultipleChoices = freezed,
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMultipleChoices: freezed == hasMultipleChoices
          ? _value.hasMultipleChoices
          : hasMultipleChoices // ignore: cast_nullable_to_non_nullable
              as bool?,
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsImplCopyWith<$Res>
    implements $QuestionsCopyWith<$Res> {
  factory _$$QuestionsImplCopyWith(
          _$QuestionsImpl value, $Res Function(_$QuestionsImpl) then) =
      __$$QuestionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      String? label,
      @JsonKey(name: "has_multiple_choices") bool? hasMultipleChoices,
      List<Choices>? choices});
}

/// @nodoc
class __$$QuestionsImplCopyWithImpl<$Res>
    extends _$QuestionsCopyWithImpl<$Res, _$QuestionsImpl>
    implements _$$QuestionsImplCopyWith<$Res> {
  __$$QuestionsImplCopyWithImpl(
      _$QuestionsImpl _value, $Res Function(_$QuestionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? label = freezed,
    Object? hasMultipleChoices = freezed,
    Object? choices = freezed,
  }) {
    return _then(_$QuestionsImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String?,
      hasMultipleChoices: freezed == hasMultipleChoices
          ? _value.hasMultipleChoices
          : hasMultipleChoices // ignore: cast_nullable_to_non_nullable
              as bool?,
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<Choices>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionsImpl implements _Questions {
  _$QuestionsImpl(
      {this.id,
      this.dateCreated,
      this.dateModified,
      this.label,
      @JsonKey(name: "has_multiple_choices") this.hasMultipleChoices,
      final List<Choices>? choices})
      : _choices = choices;

  factory _$QuestionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionsImplFromJson(json);

  @override
  final int? id;
  @override
  final String? dateCreated;
  @override
  final String? dateModified;
  @override
  final String? label;
  @override
  @JsonKey(name: "has_multiple_choices")
  final bool? hasMultipleChoices;
  final List<Choices>? _choices;
  @override
  List<Choices>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Questions(id: $id, dateCreated: $dateCreated, dateModified: $dateModified, label: $label, hasMultipleChoices: $hasMultipleChoices, choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hasMultipleChoices, hasMultipleChoices) ||
                other.hasMultipleChoices == hasMultipleChoices) &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCreated, dateModified,
      label, hasMultipleChoices, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsImplCopyWith<_$QuestionsImpl> get copyWith =>
      __$$QuestionsImplCopyWithImpl<_$QuestionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionsImplToJson(
      this,
    );
  }
}

abstract class _Questions implements Questions {
  factory _Questions(
      {final int? id,
      final String? dateCreated,
      final String? dateModified,
      final String? label,
      @JsonKey(name: "has_multiple_choices") final bool? hasMultipleChoices,
      final List<Choices>? choices}) = _$QuestionsImpl;

  factory _Questions.fromJson(Map<String, dynamic> json) =
      _$QuestionsImpl.fromJson;

  @override
  int? get id;
  @override
  String? get dateCreated;
  @override
  String? get dateModified;
  @override
  String? get label;
  @override
  @JsonKey(name: "has_multiple_choices")
  bool? get hasMultipleChoices;
  @override
  List<Choices>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsImplCopyWith<_$QuestionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Choices _$ChoicesFromJson(Map<String, dynamic> json) {
  return _Choices.fromJson(json);
}

/// @nodoc
mixin _$Choices {
  int? get id => throw _privateConstructorUsedError;
  String? get dateCreated => throw _privateConstructorUsedError;
  String? get dateModified => throw _privateConstructorUsedError;
  @JsonKey(name: "choice_title")
  String? get choiceTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "is_correct")
  bool? get isCorrect => throw _privateConstructorUsedError;
  int? get question => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoicesCopyWith<Choices> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoicesCopyWith<$Res> {
  factory $ChoicesCopyWith(Choices value, $Res Function(Choices) then) =
      _$ChoicesCopyWithImpl<$Res, Choices>;
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      @JsonKey(name: "choice_title") String? choiceTitle,
      @JsonKey(name: "is_correct") bool? isCorrect,
      int? question});
}

/// @nodoc
class _$ChoicesCopyWithImpl<$Res, $Val extends Choices>
    implements $ChoicesCopyWith<$Res> {
  _$ChoicesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? choiceTitle = freezed,
    Object? isCorrect = freezed,
    Object? question = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      choiceTitle: freezed == choiceTitle
          ? _value.choiceTitle
          : choiceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChoicesImplCopyWith<$Res> implements $ChoicesCopyWith<$Res> {
  factory _$$ChoicesImplCopyWith(
          _$ChoicesImpl value, $Res Function(_$ChoicesImpl) then) =
      __$$ChoicesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? dateCreated,
      String? dateModified,
      @JsonKey(name: "choice_title") String? choiceTitle,
      @JsonKey(name: "is_correct") bool? isCorrect,
      int? question});
}

/// @nodoc
class __$$ChoicesImplCopyWithImpl<$Res>
    extends _$ChoicesCopyWithImpl<$Res, _$ChoicesImpl>
    implements _$$ChoicesImplCopyWith<$Res> {
  __$$ChoicesImplCopyWithImpl(
      _$ChoicesImpl _value, $Res Function(_$ChoicesImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? dateCreated = freezed,
    Object? dateModified = freezed,
    Object? choiceTitle = freezed,
    Object? isCorrect = freezed,
    Object? question = freezed,
  }) {
    return _then(_$ChoicesImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      dateCreated: freezed == dateCreated
          ? _value.dateCreated
          : dateCreated // ignore: cast_nullable_to_non_nullable
              as String?,
      dateModified: freezed == dateModified
          ? _value.dateModified
          : dateModified // ignore: cast_nullable_to_non_nullable
              as String?,
      choiceTitle: freezed == choiceTitle
          ? _value.choiceTitle
          : choiceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoicesImpl implements _Choices {
  _$ChoicesImpl(
      {this.id,
      this.dateCreated,
      this.dateModified,
      @JsonKey(name: "choice_title") this.choiceTitle,
      @JsonKey(name: "is_correct") this.isCorrect,
      this.question});

  factory _$ChoicesImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoicesImplFromJson(json);

  @override
  final int? id;
  @override
  final String? dateCreated;
  @override
  final String? dateModified;
  @override
  @JsonKey(name: "choice_title")
  final String? choiceTitle;
  @override
  @JsonKey(name: "is_correct")
  final bool? isCorrect;
  @override
  final int? question;

  @override
  String toString() {
    return 'Choices(id: $id, dateCreated: $dateCreated, dateModified: $dateModified, choiceTitle: $choiceTitle, isCorrect: $isCorrect, question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoicesImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCreated, dateCreated) ||
                other.dateCreated == dateCreated) &&
            (identical(other.dateModified, dateModified) ||
                other.dateModified == dateModified) &&
            (identical(other.choiceTitle, choiceTitle) ||
                other.choiceTitle == choiceTitle) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCreated, dateModified,
      choiceTitle, isCorrect, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      __$$ChoicesImplCopyWithImpl<_$ChoicesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoicesImplToJson(
      this,
    );
  }
}

abstract class _Choices implements Choices {
  factory _Choices(
      {final int? id,
      final String? dateCreated,
      final String? dateModified,
      @JsonKey(name: "choice_title") final String? choiceTitle,
      @JsonKey(name: "is_correct") final bool? isCorrect,
      final int? question}) = _$ChoicesImpl;

  factory _Choices.fromJson(Map<String, dynamic> json) = _$ChoicesImpl.fromJson;

  @override
  int? get id;
  @override
  String? get dateCreated;
  @override
  String? get dateModified;
  @override
  @JsonKey(name: "choice_title")
  String? get choiceTitle;
  @override
  @JsonKey(name: "is_correct")
  bool? get isCorrect;
  @override
  int? get question;
  @override
  @JsonKey(ignore: true)
  _$$ChoicesImplCopyWith<_$ChoicesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
