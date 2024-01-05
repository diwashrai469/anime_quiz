import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/login/domain/repository/login_repository.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class LoginUsecase {
  final ILoginRepository _iLoginRepository;

  LoginUsecase(this._iLoginRepository);

  Future<Either<NetworkFailure, SignupResponseModel>> call(
      {required String password, required String username}) async {
    return await _iLoginRepository.loginUser(
        password: password, username: username);
  }
}
