import 'package:demo/utilits/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/homepage.dart';

import 'pages/loginpage.dart';

void main() {
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      //home:HomePage(),
      themeMode: ThemeMode.light,
      theme:ThemeData(primarySwatch: Colors.deepOrange,
      fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness:Brightness.dark,
      ),
      initialRoute: "/",
      routes: {
       "/":(context) => LoginPage(),
       MyRoutes.homeRoute:(context)  => HomePage(),
       MyRoutes.loginRoute:(context) =>  LoginPage()
     },
    );
      
  }
}

