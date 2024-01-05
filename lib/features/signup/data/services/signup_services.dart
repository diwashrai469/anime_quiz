import 'package:anime_quiz/core/services/intercepters.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignupServices {
  final DioService _dioService;
  SignupServices(
    this._dioService,
  );

  Future<SignupResponseModel> signupUser(
      {required String email,
      required String password,
      required fullname,
      required String username}) async {
    final response = await _dioService.http.post("/users/signup/",
        data: {"username": username, "password": password, "email": email});
    return SignupResponseModel.fromJson(response.data);
  }
}
