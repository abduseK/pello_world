import 'package:flutter/material.dart';
import 'package:hackathon_pro/components/home.dart';
import 'auth_pages/login_pages.dart';


void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Main(), 
    )
  );
}

class Main extends StatelessWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login_Page(),
    );
  }
}