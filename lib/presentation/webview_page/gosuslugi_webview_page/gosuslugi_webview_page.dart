import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

@RoutePage()
class GosuslugiWebViewPage extends StatefulWidget {
  const GosuslugiWebViewPage({
    super.key,
  });

  @override
  State<GosuslugiWebViewPage> createState() => _GosuslugiWebViewPageState();
}

class _GosuslugiWebViewPageState extends State<GosuslugiWebViewPage> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse('https://esia.gosuslugi.ru/login/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WebViewWidget(controller: controller),
    );
  }
}