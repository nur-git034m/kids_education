import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
      if (Platform.isIOS) WebView.platform = SurfaceAndroidWebView();
    }

    return const Scaffold(
      body: SafeArea(
        child: WebView(
          initialUrl:
              'https://tumalas.kz',
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}
