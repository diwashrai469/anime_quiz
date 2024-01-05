import 'package:anime_quiz/core/services/intercepters.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginServices {
  final DioService _dioService;
  LoginServices(
    this._dioService,
  );

  Future<SignupResponseModel> loginUser(
      {required String password, required String username}) async {
    final response = await _dioService.http.post("/users/login/", data: {
      "username": username,
      "password": password,
    });
    return SignupResponseModel.fromJson(response.data);
  }
}
