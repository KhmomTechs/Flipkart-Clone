import 'package:flutter/material.dart';

class NotificationPreferences extends StatefulWidget {
  @override
  _NotificationPreferencesState createState() => _NotificationPreferencesState();
}

class _NotificationPreferencesState extends State<NotificationPreferences> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification Preferences")),
      body: Center(child: Text("Notification Preferences Screen")),
    );
  }
}
