import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
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
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

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
              initialOptions: InAppWebViewGroupOptions(
                android: AndroidInAppWebViewOptions(
                  useHybridComposition: true,
                  // hardwareAcceleration: false,

                )
              ),
              initialUrlRequest: URLRequest(
                url: Uri.parse('https://nashsever51.ru/'),
              ),
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
