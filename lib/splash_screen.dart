import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/data/network/api.dart';
import 'package:test_app/presentation/blocs/user_bloc.dart';
import 'package:test_app/routes/app_router.dart';

@RoutePage()
class FirstlyScreen extends StatefulWidget {
  const FirstlyScreen({super.key});

  @override
  State<FirstlyScreen> createState() => _FirstlyScreenState();
}

class _FirstlyScreenState extends State<FirstlyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: Text('Press button'),
          onPressed: ()async {
            BlocProvider.of<UserBloc>(context).add(HomeEvent());
            AutoRouter.of(context).pushAndPopUntil(const CombainRoute(),
                predicate: (Route<dynamic> route) => false);

          },
        ),
      ),
    );
  }
}
