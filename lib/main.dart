import 'package:flutter/material.dart';
import 'package:test_app/data/network/api.dart';
import 'package:test_app/presentation/blocs/user_bloc.dart';
import 'package:test_app/routes/app_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    AppRouter appRouter = AppRouter();
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>UserBloc(fetchData: FetchData()))
      ],
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
      ),
    );
  }
}
