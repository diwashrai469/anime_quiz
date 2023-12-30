import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_response_model.freezed.dart';
part 'signup_response_model.g.dart';

@freezed
class SignupResponseModel with _$SignupResponseModel {
  factory SignupResponseModel({
    String? token,
    User? user,
  }) = _SignupResponseModel;

  factory SignupResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SignupResponseModelFromJson(json);
}

@freezed
class User with _$User {
  factory User({
    int? id,
    String? username,
    String? password,
    String? email,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
