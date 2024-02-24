import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:test_app/domain/models/posts_model/post_model.dart';

import '../../data/network/api.dart';

part 'user_event.dart';

part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final FetchData fetchData;

  UserBloc({required this.fetchData}) : super(UserInitial()) {
    on<HomeEvent>(_homeFunc);
  }

  void _homeFunc(HomeEvent event, Emitter<UserState> emit) async {
    emit(LoadingState());
    final List<PostModel> list = await fetchData.getPosts() ?? [];
    emit(list.isEmpty
        ? const ErrorState(error: 'Something went wrong')
        : LoadedState(postModelList: list));
  }
}
