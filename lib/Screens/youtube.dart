import 'package:flutter/material.dart';
import 'package:version2/webContainerService.dart';

class Youtube extends StatelessWidget {
  const Youtube({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: WebViewContainer(
      serviceName: "youtube",
    )));
  }
}
