
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewContainer extends StatelessWidget {
  final String serviceName;
    WebViewContainer({
    super.key,
    required this.serviceName,
  });
  

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://$serviceName.com/'));
    return WebViewWidget(
      controller: controller,
    );
  }
}
