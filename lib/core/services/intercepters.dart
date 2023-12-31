import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'local_storage.dart';
import 'network_services.dart';

@injectable
class DioService {
  late final Dio _dio;
  Dio get http => _dio;

  final LocalStorageService _localStorageService;
  DioService(this._localStorageService) {
    _dio = Dio();
    _dio.options.baseUrl = "https://raikanxa.pythonanywhere.com";

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          String? token =
              _localStorageService.read(LocalStorageKeys.accessToken);
          if (token != null) {
            options.headers['Authorization'] = "Bearer $token";
          }
          return handler.next(options); //continue
        },
        onResponse: (response, handler) {
          return handler.next(response); // continue
        },
        onError: (DioException e, handler) {
          if (e.type == DioExceptionType.badResponse) {
            if (e.response!.statusCode == 401) {
              _localStorageService.clear(LocalStorageKeys.accessToken);

              Future.delayed(const Duration(milliseconds: 100), () {
                //
              });
            }
          }
          return handler.next(
            NetworkFailure(
                requestOptions: e.requestOptions,
                error: e.error,
                response: e.response,
                type: e.type),
          );
        },
      ),
    );
  }
}
