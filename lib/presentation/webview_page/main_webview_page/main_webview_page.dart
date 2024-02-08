import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

@RoutePage()
class MainWebViewPage extends StatefulWidget {
  const MainWebViewPage({
    super.key,
  });

  @override
  State<MainWebViewPage> createState() => _MainWebViewPageState();
}

class _MainWebViewPageState extends State<MainWebViewPage> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  final options = InAppWebViewGroupOptions(
    crossPlatform: InAppWebViewOptions(
      javaScriptCanOpenWindowsAutomatically: true,
      javaScriptEnabled: true,
    ),
    android: AndroidInAppWebViewOptions(supportMultipleWindows: true),
    ios: IOSInAppWebViewOptions(
      useOnNavigationResponse: true,
    ),
  );

  @override
  void initState() {
    super.initState();
    initCookies();
  }

  void initCookies() async {
    final cookieManager = CookieManager.instance();
    cookieManager.setCookie(
      url: Uri.parse("https://nashsever51.ru/"),
      name: "nsmapp",
      value: "1",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: InAppWebView(
              key: webViewKey,
              initialUrlRequest: URLRequest(
                url: Uri.parse('https://nashsever51.ru/'),
              ),
              initialOptions: options,
              onWebViewCreated: (controller) {
                webViewController = controller;
              },
            ),
          ),
        ],
      ),
    );
  }
}
