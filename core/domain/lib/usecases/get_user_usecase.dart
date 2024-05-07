import '../entities/user.dart';
import '../entity_wrapper.dart';
import '../repository/user_repository.dart';
import 'use_case.dart';

class GetUserUseCase implements UseCase<UserEntity> {
  final UserRepository _userRepository;

  GetUserUseCase(this._userRepository);

  @override
  Future<EntityWrapper<UserEntity>> invoke() {
    return _userRepository.getUser();
  }
}
