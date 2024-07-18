// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart'
    as _i15;
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart'
    as _i16;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart'
    as _i17;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource_impl.dart'
    as _i18;
import 'package:banx/core/data/repository/authentication_repository_impl.dart'
    as _i22;
import 'package:banx/core/data/repository/profile_repository_impl.dart' as _i20;
import 'package:banx/core/data/repository/token_repository_impl.dart' as _i9;
import 'package:banx/core/domain/repository/authentication_repository.dart'
    as _i21;
import 'package:banx/core/domain/repository/profile_repository.dart' as _i19;
import 'package:banx/core/domain/repository/token_repository.dart' as _i8;
import 'package:banx/core/networking/api_service.dart' as _i14;
import 'package:banx/core/networking/http_client.dart' as _i13;
import 'package:banx/core/networking/interceptors/info_interceptor.dart' as _i3;
import 'package:banx/core/networking/interceptors/response_interceptor.dart'
    as _i5;
import 'package:banx/core/networking/interceptors/token_interceptor.dart'
    as _i10;
import 'package:banx/core/utils/configurations/banx_config.dart' as _i12;
import 'package:banx/di.dart' as _i30;
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart'
    as _i24;
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart'
    as _i28;
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart'
    as _i23;
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart'
    as _i27;
import 'package:banx/feature/main/presentation/bloc/main_bloc.dart' as _i4;
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart' as _i29;
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart'
    as _i26;
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart'
    as _i25;
import 'package:dio/dio.dart' as _i11;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:pretty_dio_logger/pretty_dio_logger.dart' as _i7;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.InfoInterceptor>(() => _i3.InfoInterceptor());
    gh.factory<_i4.MainBloc>(() => _i4.MainBloc());
    gh.factory<_i5.ResponseInterceptor>(() => _i5.ResponseInterceptor());
    gh.lazySingleton<_i6.FlutterSecureStorage>(
        () => registerModule.flutterSecureStorage());
    gh.lazySingleton<_i7.PrettyDioLogger>(
        () => registerModule.prettyDioLogger());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.singleton<_i8.TokenRepository>(() =>
        _i9.TokenRepositoryImpl(secureStorage: gh<_i6.FlutterSecureStorage>()));
    gh.factory<_i10.TokenInterceptor>(() =>
        _i10.TokenInterceptor(tokenRepository: gh<_i8.TokenRepository>()));
    gh.lazySingleton<_i11.Dio>(() => registerModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i5.ResponseInterceptor>(),
          gh<_i10.TokenInterceptor>(),
          gh<_i3.InfoInterceptor>(),
          gh<_i7.PrettyDioLogger>(),
        ));
    await gh.lazySingletonAsync<_i12.BanxConfig>(
      () => registerModule.banxConfig(gh<_i8.TokenRepository>()),
      preResolve: true,
    );
    gh.lazySingleton<_i13.HTTPClient>(() => _i14.ApiService(
          dio: gh<_i11.Dio>(),
          tokenRepository: gh<_i8.TokenRepository>(),
        ));
    gh.lazySingleton<_i15.AuthenticationRemoteDataSource>(() =>
        _i16.AuthenticationRemoteDataSourceImpl(
            apiService: gh<_i13.HTTPClient>()));
    gh.lazySingleton<_i17.ProfileRemoteDataSource>(() =>
        _i18.ProfileRemoteDataSourceImpl(apiService: gh<_i13.HTTPClient>()));
    gh.lazySingleton<_i19.ProfileRepository>(() => _i20.ProfileRepositoryImpl(
        profileRemoteDataSource: gh<_i17.ProfileRemoteDataSource>()));
    gh.lazySingleton<_i21.AuthenticationRepository>(
        () => _i22.AuthenticationRepositoryImpl(
              authenticationRemoteDataSource:
                  gh<_i15.AuthenticationRemoteDataSource>(),
              tokenRepository: gh<_i8.TokenRepository>(),
            ));
    gh.factory<_i23.ConfirmPasswordBloc>(() => _i23.ConfirmPasswordBloc(
          authenticationRepository: gh<_i21.AuthenticationRepository>(),
          profileRepository: gh<_i19.ProfileRepository>(),
        ));
    gh.factory<_i24.AddAddressBloc>(() =>
        _i24.AddAddressBloc(profileRepository: gh<_i19.ProfileRepository>()));
    gh.factory<_i25.VerifyPasswordBloc>(() => _i25.VerifyPasswordBloc(
          authenticationRepository: gh<_i21.AuthenticationRepository>(),
          tokenRepository: gh<_i8.TokenRepository>(),
          profileRepository: gh<_i19.ProfileRepository>(),
        ));
    gh.factory<_i26.VerifyOtpBloc>(() => _i26.VerifyOtpBloc(
        authenticationRepository: gh<_i21.AuthenticationRepository>()));
    gh.factory<_i27.IdentityBloc>(() => _i27.IdentityBloc(
        authenticationRepository: gh<_i21.AuthenticationRepository>()));
    gh.factory<_i28.CardOrderBloc>(() => _i28.CardOrderBloc(
        authenticationRepository: gh<_i21.AuthenticationRepository>()));
    gh.factory<_i29.PhoneBloc>(() => _i29.PhoneBloc(
        authenticationRepository: gh<_i21.AuthenticationRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i30.RegisterModule {}
