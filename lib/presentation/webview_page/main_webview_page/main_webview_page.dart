import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:nash_sever/navigation/app_router.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class MainWebViewPage extends StatefulWidget {
  const MainWebViewPage({
    super.key,
  });

  @override
  State<MainWebViewPage> createState() => _MainWebViewPageState();
}

class _MainWebViewPageState extends State<MainWebViewPage> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(
        NavigationDelegate(
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://esia.gosuslugi.ru')) {
              context.router.push(const GosuslugiWebViewRoute());

              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://nashsever51.ru/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}
