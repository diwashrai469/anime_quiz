// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:anime_quiz/core/services/intercepters.dart' as _i5;
import 'package:anime_quiz/core/services/local_storage.dart' as _i3;
import 'package:anime_quiz/core/services/toast_services.dart' as _i4;
import 'package:anime_quiz/features/signup/data/repository_impl/singup_repository_impl.dart'
    as _i8;
import 'package:anime_quiz/features/signup/data/services/signup_services.dart'
    as _i6;
import 'package:anime_quiz/features/signup/domain/repository/singup_repository.dart'
    as _i7;
import 'package:anime_quiz/features/signup/domain/usecase/signup_usecase.dart'
    as _i9;
import 'package:anime_quiz/features/signup/presentation/view_model/signup_view_model.dart'
    as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.LocalStorageService>(() => _i3.LocalStorageService());
    gh.lazySingleton<_i4.ToastService>(() => _i4.ToastService());
    gh.factory<_i5.DioService>(
        () => _i5.DioService(gh<_i3.LocalStorageService>()));
    gh.factory<_i6.SignupServices>(
        () => _i6.SignupServices(gh<_i5.DioService>()));
    gh.factory<_i7.ISignupRepository>(
        () => _i8.SignupRepositoryImpl(gh<_i6.SignupServices>()));
    gh.factory<_i9.SignupUsecase>(
        () => _i9.SignupUsecase(gh<_i7.ISignupRepository>()));
    gh.factory<_i10.SignupViewModel>(() => _i10.SignupViewModel(
          gh<_i9.SignupUsecase>(),
          gh<_i4.ToastService>(),
        ));
    return this;
  }
}
