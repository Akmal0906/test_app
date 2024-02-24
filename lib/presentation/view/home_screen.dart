import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/presentation/blocs/user_bloc.dart';
import 'package:test_app/presentation/widgets/post_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<UserBloc, UserState>(
        listener: (BuildContext context, UserState state) {},
        builder: (BuildContext context, UserState state) {
          if (state is UserInitial) {
            return Center(
              child: Text('Please wating'),
            );
          } else if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Text(state.error),
            );
          } else if (state is LoadedState) {
            return Expanded(
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: state.postModelList.length,
                itemBuilder: (BuildContext context, int index) {
                  return PostWidget(index: index,
                      userId: state.postModelList[index].userId.toString(),
                      title: state.postModelList[index].title);
                },

              ),
            );
          }
          return const Center(
            child: Text('sdgjsdgfsd klwfjlks'),
          );
        },
      ),
    );
  }
}
