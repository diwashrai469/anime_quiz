import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/dashboard/view/dashboard_view.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/utils.dart';
import 'package:injectable/injectable.dart';

import 'package:anime_quiz/core/base_model/base_model.dart';
import 'package:anime_quiz/core/services/local_storage.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/login/domain/usecase/login_usercase.dart';

@injectable
class LoginViewModel extends BaseModel {
  final LoginUsecase _loginUsecase;
  final LocalStorageService _localStorageService;
  final ToastService _toastService;
  LoginViewModel(
    this._loginUsecase,
    this._localStorageService,
    this._toastService,
  );
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  loginUser({required String username, required String password}) async {
    setLoading(true);

    var result =
        await _loginUsecase.call(password: password, username: username);
    result.fold(
      (NetworkFailure error) {
        if (error.message?.isNotEmpty == true) {
          ToastService().e(error.message.toString());
        }
      },
      (SignupResponseModel data) async {
        _toastService.s("Sucessfully logedIn ");
        _localStorageService.write(LocalStorageKeys.accessToken, data.token);
        _localStorageService.write(LocalStorageKeys.email, data.user?.email);
        _localStorageService.write(
            LocalStorageKeys.userName, data.user?.username);
        Get.offAll(() => const DashBoardView());
      },
    );
    setLoading(false);
  }
}
