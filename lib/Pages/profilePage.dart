import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(title: Text("Profile Page", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
      backgroundColor: Colors.lightBlue[300],),
    );
  }
}