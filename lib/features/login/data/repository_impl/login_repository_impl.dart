import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/login/data/services/login_services.dart';
import 'package:anime_quiz/features/login/domain/repository/login_repository.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: ILoginRepository)
class LoginRepositoryImpl extends ILoginRepository {
  final LoginServices _loginServices;

  LoginRepositoryImpl(this._loginServices);
  @override
  Future<Either<NetworkFailure, SignupResponseModel>> loginUser(
      {required String password, required String username}) async {
    try {
      var result = await _loginServices.loginUser(
        password: password,
        username: username,
      );
      return Right(result);
    } on NetworkFailure catch (e) {
      return Left(e);
    }
  }
}
