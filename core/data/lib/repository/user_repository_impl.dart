import 'dart:async';

import 'package:domain/entities/user.dart';
import 'package:domain/entity_wrapper.dart';
import 'package:domain/repository/repository.dart';
import 'package:uuid/uuid.dart';

class UserRepositoryImpl extends UserRepository {
  UserEntity? _user;

  @override
  Future<EntityWrapper<UserEntity>> getUser() async {
    if (_user != null) {
      return EntityWrapper.success<UserEntity>(_user!);
    }
    Future.delayed(
      const Duration(milliseconds: 300),
      () => _user = UserEntity(const Uuid().v4()),
    );
    return EntityWrapper.success<UserEntity>(_user!);
  }
}
