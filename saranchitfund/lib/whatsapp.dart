import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Whatsapp extends StatefulWidget {
  final String phoneNumber;

  Whatsapp(this.phoneNumber);

  @override
  State<Whatsapp> createState() => _WhatsappWidgetState();
}

class _WhatsappWidgetState extends State<Whatsapp> {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _sendMessageToWhatsapp(widget.phoneNumber);
        },
        icon: Icon(
          Icons.message,
          color: Colors.green,
        ),
        label: Text(
          widget.phoneNumber,
          style: TextStyle(
            color: Colors.green,
          ),
        ));
  }

  _sendMessageToWhatsapp(String phoneNumber)
   async {
    final whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      throw 'Could not launch $whatsappUrl';
    }
  }
}
