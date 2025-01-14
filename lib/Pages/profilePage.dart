import 'package:flutter/material.dart';

class profilePage extends StatelessWidget {
  const profilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        title: Text(
          "Profile Page", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20, 
            fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
      backgroundColor: Colors.lightBlue[700],),
    );
  }
}