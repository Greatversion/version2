// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:version2/webContainerService.dart';


class Instagram extends StatelessWidget {
  const Instagram({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(body: WebViewContainer(serviceName: "instagram",)));
  }
}

