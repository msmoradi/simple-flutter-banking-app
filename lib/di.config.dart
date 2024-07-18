// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart'
    as _i12;
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart'
    as _i13;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart'
    as _i14;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource_impl.dart'
    as _i15;
import 'package:banx/core/data/repository/authentication_repository_impl.dart'
    as _i19;
import 'package:banx/core/data/repository/profile_repository_impl.dart' as _i17;
import 'package:banx/core/data/repository/token_repository_impl.dart' as _i6;
import 'package:banx/core/domain/repository/authentication_repository.dart'
    as _i18;
import 'package:banx/core/domain/repository/profile_repository.dart' as _i16;
import 'package:banx/core/domain/repository/token_repository.dart' as _i5;
import 'package:banx/core/networking/api_service.dart' as _i11;
import 'package:banx/core/networking/http_client.dart' as _i10;
import 'package:banx/core/utils/configurations/app_config.dart' as _i7;
import 'package:banx/core/utils/configurations/banx_config.dart' as _i8;
import 'package:banx/di.dart' as _i27;
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart'
    as _i21;
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart'
    as _i25;
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart'
    as _i20;
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart'
    as _i24;
import 'package:banx/feature/main/presentation/bloc/main_bloc.dart' as _i3;
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart' as _i26;
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart'
    as _i23;
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart'
    as _i22;
import 'package:dio/dio.dart' as _i9;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

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
    gh.factory<_i3.MainBloc>(() => _i3.MainBloc());
    gh.lazySingleton<_i4.FlutterSecureStorage>(
        () => registerModule.flutterSecureStorage());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.singleton<_i5.TokenRepository>(() =>
        _i6.TokenRepositoryImpl(secureStorage: gh<_i4.FlutterSecureStorage>()));
    gh.factory<_i7.AppConfig>(() => _i7.AppConfig(gh<_i5.TokenRepository>()));
    await gh.lazySingletonAsync<_i8.BanxConfig>(
      () => registerModule.banxConfig(gh<_i5.TokenRepository>()),
      preResolve: true,
    );
    gh.lazySingleton<_i9.Dio>(() => registerModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i5.TokenRepository>(),
        ));
    gh.lazySingleton<_i10.HTTPClient>(() => _i11.ApiService(
          dio: gh<_i9.Dio>(),
          tokenRepository: gh<_i5.TokenRepository>(),
        ));
    gh.lazySingleton<_i12.AuthenticationRemoteDataSource>(() =>
        _i13.AuthenticationRemoteDataSourceImpl(
            apiService: gh<_i10.HTTPClient>()));
    gh.lazySingleton<_i14.ProfileRemoteDataSource>(() =>
        _i15.ProfileRemoteDataSourceImpl(apiService: gh<_i10.HTTPClient>()));
    gh.lazySingleton<_i16.ProfileRepository>(() => _i17.ProfileRepositoryImpl(
        profileRemoteDataSource: gh<_i14.ProfileRemoteDataSource>()));
    gh.lazySingleton<_i18.AuthenticationRepository>(
        () => _i19.AuthenticationRepositoryImpl(
              authenticationRemoteDataSource:
                  gh<_i12.AuthenticationRemoteDataSource>(),
              tokenRepository: gh<_i5.TokenRepository>(),
            ));
    gh.factory<_i20.ConfirmPasswordBloc>(() => _i20.ConfirmPasswordBloc(
          authenticationRepository: gh<_i18.AuthenticationRepository>(),
          profileRepository: gh<_i16.ProfileRepository>(),
        ));
    gh.factory<_i21.AddAddressBloc>(() =>
        _i21.AddAddressBloc(profileRepository: gh<_i16.ProfileRepository>()));
    gh.factory<_i22.VerifyPasswordBloc>(() => _i22.VerifyPasswordBloc(
          authenticationRepository: gh<_i18.AuthenticationRepository>(),
          tokenRepository: gh<_i5.TokenRepository>(),
          profileRepository: gh<_i16.ProfileRepository>(),
        ));
    gh.factory<_i23.VerifyOtpBloc>(() => _i23.VerifyOtpBloc(
        authenticationRepository: gh<_i18.AuthenticationRepository>()));
    gh.factory<_i24.IdentityBloc>(() => _i24.IdentityBloc(
        authenticationRepository: gh<_i18.AuthenticationRepository>()));
    gh.factory<_i25.CardOrderBloc>(() => _i25.CardOrderBloc(
        authenticationRepository: gh<_i18.AuthenticationRepository>()));
    gh.factory<_i26.PhoneBloc>(() => _i26.PhoneBloc(
        authenticationRepository: gh<_i18.AuthenticationRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i27.RegisterModule {}
