import 'package:flutter/material.dart';
import 'package:hackathon_pro/auth_pages/auth_page.dart';
import 'auth_pages/login_pages.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AuthPage(),
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