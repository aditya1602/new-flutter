import 'package:flutter/material.dart';
import 'package:flutter_dec_17/Widgets/drawer.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Container(
          child: Text("welcome !!"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
