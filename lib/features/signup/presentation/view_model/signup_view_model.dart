import 'package:anime_quiz/core/base_model/base_model.dart';
import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/core/services/toast_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:anime_quiz/features/signup/domain/usecase/signup_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignupViewModel extends BaseModel {
  final SignupUsecase _signupUsecase;
  final ToastService _toastService;
  SignupViewModel(this._signupUsecase, this._toastService);

  signuUpuser(
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
          ToastService().e("Error login user");
        }
      },
      (SignupResponseModel data) async {
        print(data.token);
        print("signedup sucessfully");
        _toastService.s("Sucessfully logedIn");
      },
    );
    setLoading(false);
  }
}
