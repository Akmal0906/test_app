part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}
final class LoadingState extends UserState{
  @override
  List<Object> get props => [];
}
final class LoadedState extends UserState{
  final List<PostModel> postModelList;
  const LoadedState({required this.postModelList});
  @override
  List<Object> get props => [postModelList];
}
final class ErrorState extends UserState{
  final String error;
  const ErrorState({required this.error});
  @override
  List<Object> get props => [error];
}
