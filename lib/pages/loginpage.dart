import 'package:demo/utilits/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child:SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [Image.asset("assets/images/loginpage_images.png", fit:BoxFit.cover),
        const SizedBox(
          height: 20.0,
        ),
        const Text("Welcome",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          wordSpacing: 10
        ),
        textAlign: TextAlign.left,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0 , horizontal: 32.0),
          child: Column(children: [TextFormField(
          decoration:InputDecoration(
            hintText: "Enter Username",
            labelText: "Username"
          )
        ),
        TextFormField(
          obscureText: true,
          decoration:InputDecoration(
            hintText: "Enter Password",
            labelText: "Password"
          )
        ),
        SizedBox(
          height: 20.0,
        ),
        ElevatedButton(onPressed: () {
          Navigator.pushNamed(context, MyRoutes.homeRoute);
        },
         child: Text("Login"),

         style: TextButton.styleFrom(minimumSize: Size(150, 40)),
        )
        
        ],
        ),
        ),
        ],
      ),
    ),
    );

   }
}     
      
  
