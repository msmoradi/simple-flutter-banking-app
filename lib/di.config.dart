// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource.dart'
    as _i9;
import 'package:banx/core/data/datasource/remote/authentication_remote_datasource_impl.dart'
    as _i10;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource.dart'
    as _i11;
import 'package:banx/core/data/datasource/remote/profile_remote_datasource_impl.dart'
    as _i12;
import 'package:banx/core/data/repository/authentication_repository_impl.dart'
    as _i16;
import 'package:banx/core/data/repository/profile_repository_impl.dart' as _i14;
import 'package:banx/core/data/repository/token_repository_impl.dart' as _i5;
import 'package:banx/core/domain/repository/authentication_repository.dart'
    as _i15;
import 'package:banx/core/domain/repository/profile_repository.dart' as _i13;
import 'package:banx/core/domain/repository/token_repository.dart' as _i4;
import 'package:banx/core/networking/api_service.dart' as _i8;
import 'package:banx/core/networking/http_client.dart' as _i7;
import 'package:banx/di.dart' as _i24;
import 'package:banx/feature/add_address/presentation/bloc/add_address_bloc.dart'
    as _i18;
import 'package:banx/feature/card_order/presentation/bloc/card_order_bloc.dart'
    as _i22;
import 'package:banx/feature/confirm_password/presentation/bloc/confirm_password_bloc.dart'
    as _i17;
import 'package:banx/feature/identity/presentation/bloc/identity_bloc.dart'
    as _i21;
import 'package:banx/feature/main/presentation/bloc/main_bloc.dart' as _i3;
import 'package:banx/feature/phone/presentation/bloc/phone_bloc.dart' as _i23;
import 'package:banx/feature/verify_otp/presentation/bloc/verify_otp_bloc.dart'
    as _i20;
import 'package:banx/feature/verify_password/presentation/bloc/verify_password_bloc.dart'
    as _i19;
import 'package:dio/dio.dart' as _i6;
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
    final registerModule = _$RegisterModule();
    gh.factory<_i3.MainBloc>(() => _i3.MainBloc());
    gh.singleton<_i4.TokenRepository>(() => _i5.TokenRepositoryImpl());
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.lazySingleton<_i6.Dio>(() => registerModule.dio(
          gh<String>(instanceName: 'BaseUrl'),
          gh<_i4.TokenRepository>(),
        ));
    gh.singleton<_i7.HTTPClient>(() => _i8.ApiService(
          dio: gh<_i6.Dio>(),
          tokenRepository: gh<_i4.TokenRepository>(),
        ));
    gh.singleton<_i9.AuthenticationRemoteDataSource>(() =>
        _i10.AuthenticationRemoteDataSourceImpl(
            apiService: gh<_i7.HTTPClient>()));
    gh.singleton<_i11.ProfileRemoteDataSource>(() =>
        _i12.ProfileRemoteDataSourceImpl(apiService: gh<_i7.HTTPClient>()));
    gh.singleton<_i13.ProfileRepository>(() => _i14.ProfileRepositoryImpl(
        profileRemoteDataSource: gh<_i11.ProfileRemoteDataSource>()));
    gh.singleton<_i15.AuthenticationRepository>(
        () => _i16.AuthenticationRepositoryImpl(
              authenticationRemoteDataSource:
                  gh<_i9.AuthenticationRemoteDataSource>(),
              tokenRepository: gh<_i4.TokenRepository>(),
            ));
    gh.factory<_i17.ConfirmPasswordBloc>(() => _i17.ConfirmPasswordBloc(
          authenticationRepository: gh<_i15.AuthenticationRepository>(),
          profileRepository: gh<_i13.ProfileRepository>(),
        ));
    gh.factory<_i18.AddAddressBloc>(() =>
        _i18.AddAddressBloc(profileRepository: gh<_i13.ProfileRepository>()));
    gh.factory<_i19.VerifyPasswordBloc>(() => _i19.VerifyPasswordBloc(
          authenticationRepository: gh<_i15.AuthenticationRepository>(),
          tokenRepository: gh<_i4.TokenRepository>(),
          profileRepository: gh<_i13.ProfileRepository>(),
        ));
    gh.factory<_i20.VerifyOtpBloc>(() => _i20.VerifyOtpBloc(
        authenticationRepository: gh<_i15.AuthenticationRepository>()));
    gh.factory<_i21.IdentityBloc>(() => _i21.IdentityBloc(
        authenticationRepository: gh<_i15.AuthenticationRepository>()));
    gh.factory<_i22.CardOrderBloc>(() => _i22.CardOrderBloc(
        authenticationRepository: gh<_i15.AuthenticationRepository>()));
    gh.factory<_i23.PhoneBloc>(() => _i23.PhoneBloc(
        authenticationRepository: gh<_i15.AuthenticationRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i24.RegisterModule {}
