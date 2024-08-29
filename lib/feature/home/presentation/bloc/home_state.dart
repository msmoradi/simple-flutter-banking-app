part of 'home_bloc.dart';

@immutable
abstract class HomeState extends Equatable {
  const HomeState();
}

class HomeSuccess extends HomeState {
  const HomeSuccess();

  @override
  List<Object?> get props => [];
}
