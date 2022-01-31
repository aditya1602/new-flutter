// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import "package:flutter_dec_17/utilities/routes.dart";

class loginPage extends StatelessWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
    child:SingleChildScrollView(
        child: Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Image.asset(
          "assets/images/login_image.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "welcome",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.indigoAccent),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Enter Username", labelText: "Username"),
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Enter Password", labelText: "Password"),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context,MyRoutes.homeRoute);
                },
                style: TextButton.styleFrom(minimumSize: Size(85, 40)),
                child: Text("login"),
              )
            ],
          ),
        )
      ],
    )));
  }
}
