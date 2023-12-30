import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:anime_quiz/features/signup/data/services/signup_services.dart';
import 'package:anime_quiz/features/signup/domain/repository/singup_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ISignupRepository)
class SignupRepositoryImpl extends ISignupRepository {
  final SignupServices _signupServices;

  SignupRepositoryImpl(this._signupServices);
  @override
  Future<Either<NetworkFailure, SignupResponseModel>> signupUser(
      {required String email,
      required String password,
      required fullname,
      required String username}) async {
    try {
      var result = await _signupServices.signupUser(
          email: email,
          password: password,
          username: username,
          fullname: fullname);
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
