import 'package:auto_route/auto_route.dart';
import 'package:nash_sever/presentation/webview_page/gosuslugi_webview_page/gosuslugi_webview_page.dart';
import 'package:nash_sever/presentation/webview_page/main_webview_page/main_webview_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainWebViewRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: GosuslugiWebViewRoute.page,
        ),
      ];
}
