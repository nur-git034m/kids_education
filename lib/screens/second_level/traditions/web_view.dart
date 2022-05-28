import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      super.initState();
      if (Platform.isAndroid) WebView.platform = AndroidWebView();
    }

    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl: 'https://tumalas.kz',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
