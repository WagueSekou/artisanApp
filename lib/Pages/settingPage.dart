import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_app/Pages/theme/themeProvider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[300],
      appBar: AppBar(
        title: Text(
          "Settings", 
          style: TextStyle(
            color: Colors.white,
            fontSize: 20, 
            fontWeight: FontWeight.bold
            ),
          ),
          centerTitle: true,
      backgroundColor: Colors.lightBlue[700],),

      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12)
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dark Mode",
            style: TextStyle(fontWeight: FontWeight.bold),),

            //switching theme
            CupertinoSwitch(value: Provider.of<Themeprovider>(context, listen:false).isDarkMode, 
            onChanged: (value) => Provider.of<Themeprovider>(context, listen:false).toggleTheme()),
          ],
        ),
      ),
    );
  }
}