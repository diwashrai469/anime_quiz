import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:anime_quiz/features/signup/domain/repository/singup_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@injectable
class SignupUsecase {
  final ISignupRepository _iSignupRepository;

  SignupUsecase(this._iSignupRepository);

  Future<Either<NetworkFailure, SignupResponseModel>> call(
      {required String email,
      required String password,
      required fullname,
      required String username}) async {
    return await _iSignupRepository.signupUser(
        email: email,
        password: password,
        fullname: fullname,
        username: username);
  }
}
