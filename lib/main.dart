import 'package:flutter/material.dart';
import 'package:my_app/Pages/login.dart';
import 'package:my_app/Pages/theme/themeProvider.dart';
import 'package:my_app/reusable/bottomNavBar.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => Themeprovider(),
    child: const MyApp(),),
    );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   final bool isLoggedIn = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: isLoggedIn ? const Homebottomnav() : const LoginForm(),
      theme: Provider.of<Themeprovider>(context).themeData,
      // darkTheme: darkMode,

      );
  }
}
