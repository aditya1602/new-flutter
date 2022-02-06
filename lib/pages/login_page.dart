// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import "package:flutter_dec_17/utilities/routes.dart";

class loginPage extends StatefulWidget {
  const loginPage({Key? key}) : super(key: key);

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
       setState(() {
      changeButton = true;
    });
    await Future.delayed(Duration(milliseconds: 290));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
    }
   
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Form(
                key: _formKey,
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
                      "welcome $name",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigoAccent),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 26),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                                hintText: "Enter Username",
                                labelText: "Username"),
                            validator:(value){
                              if(value!.isEmpty){
                                return"Username cannot be empty";
                              }
                              return null;
                            },
                            onChanged: (value) {
                              name = value;
                              setState(() {});
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                hintText: "Enter Password",
                                labelText: "Password"),
                                validator:(value){
                              if(value!.isEmpty){
                                return"Password cannot be empty";
                              }
                              else if (value.length<8){
                                return"length should be greater than 8 ";
                              }
                              return null;
                            },
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Material(
                              color: Colors.deepPurple,
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 50 : 8),
                              child: InkWell(
                                  onTap: () => moveToHome(context),
                                  child: AnimatedContainer(
                                    duration: Duration(seconds: 1),
                                    width: changeButton ? 50 : 150,
                                    height: 50,
                                    alignment: Alignment.center,
                                    child: changeButton
                                        ? Icon(
                                            Icons.done,
                                            color: Colors.white,
                                          )
                                        : Text("login",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18)),
                                  )))
                        ],
                      ),
                    )
                  ],
                ))));
  }
}
