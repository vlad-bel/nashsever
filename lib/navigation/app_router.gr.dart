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
    GosuslugiWebViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const GosuslugiWebViewPage(),
      );
    },
    MainWebViewRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const MainWebViewPage(),
      );
    },
  };
}

/// generated route for
/// [GosuslugiWebViewPage]
class GosuslugiWebViewRoute extends PageRouteInfo<void> {
  const GosuslugiWebViewRoute({List<PageRouteInfo>? children})
      : super(
          GosuslugiWebViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'GosuslugiWebViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [MainWebViewPage]
class MainWebViewRoute extends PageRouteInfo<void> {
  const MainWebViewRoute({List<PageRouteInfo>? children})
      : super(
          MainWebViewRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainWebViewRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}
