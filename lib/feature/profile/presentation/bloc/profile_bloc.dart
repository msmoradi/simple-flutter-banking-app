import 'dart:async';

import 'package:banx/core/domain/entities/user_profile_entity.dart';
import 'package:banx/core/domain/repository/profile_repository.dart';
import 'package:banx/feature/profile/presentation/bloc/profile_state.dart';
import 'package:banx/main.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

@injectable
class ProfileBloc extends Bloc<HomeEvent, ProfileState> {
  final ProfileRepository profileRepository;

  ProfileBloc({
    required this.profileRepository,
  }) : super(const ProfileState()) {
    on<ExitClick>(_onExitClick);
    on<Init>(_onInit);
    add(Init());
  }

  Future<void> _onExitClick(ExitClick event, Emitter<ProfileState> emit) async {
    restartApp();
    return;
  }

  Future<void> _onInit(Init event, Emitter<ProfileState> emit) async {
    final UserProfileEntity? profile =
        await profileRepository.getLocalProfile();

    if (profile == null) return;

    final String? photoUrl = profile.photoUrl;
    final String? firstName = profile.firstName;
    final String? lastName = profile.lastName;
    final String? username = profile.username;

    if (photoUrl?.isNotEmpty == true) {
      emit(state.copyWith(userName: photoUrl!));
    }

    if (firstName?.isNotEmpty == true && lastName?.isNotEmpty == true) {
      emit(state.copyWith(fullName: '$firstName $lastName'));
    }

    if (username?.isNotEmpty == true) {
      emit(state.copyWith(userName: username!));
    }
  }
}
