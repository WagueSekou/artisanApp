import 'package:flutter/material.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        title: Text(
          "Profile", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20, 
            fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
      backgroundColor: Colors.lightBlue[700],
      ),

      // body: Column(
      //   children: [

      //   ],
      // ),
    );
  }
}



