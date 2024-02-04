import 'package:anime_quiz/core/base_model/base_model.dart';
import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:anime_quiz/features/signup/domain/usecase/signup_usecase.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignupViewModel extends BaseModel {
  final SignupUsecase _signupUsecase;
  final LocalStorageService _localStorageService;
  final ToastService _toastService;
  SignupViewModel(
      this._signupUsecase, this._toastService, this._localStorageService);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();

  void signuUpuser(
      {required String email,
      required String password,
      required fullname,
      required String username}) async {
    setLoading(true);

    var result = await _signupUsecase.call(
        email: email,
        password: password,
        fullname: fullname,
        username: username);
    result.fold(
      (NetworkFailure error) {
        if (error.message?.isNotEmpty == true) {
          ToastService().e(error.message.toString());
        }
      },
      (SignupResponseModel data) async {
        _toastService.s("Sucessfully signed up");
        _localStorageService.write(LocalStorageKeys.accessToken, data.token);
        _localStorageService.write(LocalStorageKeys.email, data.user?.email);
        _localStorageService.write(
            LocalStorageKeys.userName, data.user?.username);
      },
    );
    setLoading(false);
  }
}
