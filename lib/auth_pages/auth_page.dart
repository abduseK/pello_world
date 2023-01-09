import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../components/home.dart';
import 'login_pages.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if(snapshot.hasData) {
            return Home();
          } else {
            return Login_Page();
          }
        },
      ),
    );
  }
}
