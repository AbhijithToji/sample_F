import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sample_f/main.dart';

void main(){
  runApp( MaterialApp(
    theme: ThemeData(primarySwatch: Colors.green),
    home:  SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreenState();

}

class SplashScreenState extends State{
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 5),()=>
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen())));

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Splash Screen"),
      ),
      body: MyBody(),
    );
  }
}