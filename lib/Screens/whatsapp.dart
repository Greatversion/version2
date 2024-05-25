import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Whatsapp extends StatefulWidget {
  const Whatsapp({super.key});

  @override
  State<Whatsapp> createState() => _WhatsappState();
}

class _WhatsappState extends State<Whatsapp> {
  @override
  void initState()async {
    // TODO: implement initState
    
    const url = 'whatsapp://send';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Container();
  }
}