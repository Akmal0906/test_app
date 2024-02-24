import 'package:auto_route/auto_route.dart';
import '../presentation/view/combain_screen.dart';
import '../splash_screen.dart';
part 'app_router.gr.dart';
@AutoRouterConfig()
class AppRouter extends _$AppRouter{
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: FirstlyRoute.page,initial: true),
    AutoRoute(page: CombainRoute.page),
  ];

    }