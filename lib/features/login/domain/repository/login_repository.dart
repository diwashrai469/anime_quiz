import 'package:anime_quiz/core/services/network_services.dart';
import 'package:anime_quiz/features/signup/data/model/signup_response_model.dart';
import 'package:dartz/dartz.dart';

abstract class ILoginRepository {
  Future<Either<NetworkFailure, SignupResponseModel>> loginUser(
      {required String password, required String username});
}
