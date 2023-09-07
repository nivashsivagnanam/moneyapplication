import 'package:flutter/material.dart';
class CalendorPage extends StatelessWidget {
  const CalendorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calendar",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,)),centerTitle: true),
    );
  }
}
