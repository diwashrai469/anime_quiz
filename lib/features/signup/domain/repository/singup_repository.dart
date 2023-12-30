import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class ISignupRepository {
  Future<Either<NetworkFailure, SignupResponseModel>> signupUser(
      {required String email,
      required String password,
      required fullname,
      required String username});
}
