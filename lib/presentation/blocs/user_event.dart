part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}
final class HomeEvent extends UserEvent{
  @override
  List<Object> get props => [];
}
