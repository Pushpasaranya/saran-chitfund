import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationIn extends StatelessWidget {
  final String location;

  LocationIn(this.location);

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
        onPressed: () {
          _openMap(location);
        },
        icon: Icon(Icons.location_on),
        label: Text(
          location,
          style: TextStyle(fontSize: 12),
        ));
  }

  _openMap(String location) async {
    final mapsUrl = 'https://maps.google.com/?q=$location';
    if (await canLaunch(mapsUrl)) {
      await launch(mapsUrl);
    } else {
      throw 'Could not launch $mapsUrl';
    }
  }
}
