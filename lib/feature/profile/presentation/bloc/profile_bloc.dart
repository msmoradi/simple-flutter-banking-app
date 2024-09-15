import 'package:banx/feature/profile/presentation/bloc/profile_state.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'profile_event.dart';

@injectable
class ProfileBloc extends Bloc<HomeEvent, ProfileState> {
  ProfileBloc() : super(const ProfileState());
}
