import 'package:flutter/material.dart';
import 'package:wallpaper/src/screen/login_screen.dart';



class App extends StatelessWidget{
  Widget build(context){
    return MaterialApp(
      title: 'WallPix',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: LoginPage(),
        )
      ),
    );
  }
}