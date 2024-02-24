// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    CombainRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const CombainScreen(),
      );
    },
    FirstlyRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const FirstlyScreen(),
      );
    },
  };
}

/// generated route for
/// [CombainScreen]
class CombainRoute extends PageRouteInfo<void> {
  const CombainRoute({List<PageRouteInfo>? children})
      : super(
          CombainRoute.name,
          initialChildren: children,
        );

  static const String name = 'CombainRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [FirstlyScreen]
class FirstlyRoute extends PageRouteInfo<void> {
  const FirstlyRoute({List<PageRouteInfo>? children})
      : super(
          FirstlyRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirstlyRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
