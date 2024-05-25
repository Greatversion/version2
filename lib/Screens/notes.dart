// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:webview_flutter/webview_flutter.dart';

class Notes extends StatelessWidget {
  const Notes({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Scaffold(body: WebViewContainernotes()));
  }
}

class WebViewContainernotes extends StatelessWidget {
  const WebViewContainernotes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(
          Uri.parse('https://www.visionias.in/resources/toppers_answers.php'));
    return WebViewWidget(
      controller: controller,
    );
  }
}
