import 'package:blog_flutter/Homepage.dart';
import 'package:blog_flutter/LoginRegisterPage.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';
void main () {
  
  runApp(new BlogApp());
}

class BlogApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "Blog App",
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: Homepage(),
    );
  }
}