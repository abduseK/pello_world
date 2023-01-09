import 'package:flutter/material.dart';
import 'package:hackathon_pro/auth_pages/text_widget.dart';
import '../components/constants.dart';
import 'registration_page.dart';
import '../components/home.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  void signInUser() async {

    void errorMessage(String message) {
      showDialog(context: context, builder: (context) {
        return AlertDialog(
          title: Text(message),
        );
      });
    }
    showDialog(context: context, builder: (context) {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.teal,
          backgroundColor: Colors.black12,
        ),
      );
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text,
      );
      Navigator.pop(context);
    } on FirebaseAuthException catch(e) {
      Navigator.pop(context);
      if(e.code == 'user-not-found') {
        errorMessage(e.code);
      } else if(e.code == 'wrong-password') {
        errorMessage(e.code);
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login2.png'),
            fit: BoxFit.fill
          )
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(height: 75,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: const [
                      Text('P',
                        style: TextStyle(
                          color: kBackgroundColor,
                          fontSize: 80,
                          fontFamily: 'SassyFrass'
                        ),
                      ),
                      Text('ello',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.teal,
                          fontFamily: 'SassyFrass'
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  ExtractedTextWidget(
                    controller: emailController,
                    obscureText: false,
                    hintText: 'email',
                  ),
                  const SizedBox(height: 10,),
                  ExtractedTextWidget(
                    controller: passwordController,
                    obscureText: true,
                    hintText: 'password',
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                         Text('Forgot password?',
                          style: TextStyle(
                            color: kBackgroundColor
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40,),
                  GestureDetector(
                    onTap: signInUser,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 28.0),
                      child: Container(
                        height: 40,
                        width: double.infinity,
                        child: const Center(
                          child: Text('Sign In',
                            style: TextStyle(
                              color: kBackgroundColor,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?',
                        style: TextStyle(
                          color: kBackgroundColor
                        ),
                      ),
                      const SizedBox(width: 6,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Register_Page()));
                        },
                        child: const Text('Register now',
                          style: TextStyle(
                            color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text('Or sign with',
                          style: TextStyle(
                            color: kBackgroundColor
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/google.png',
                        height: 15,
                      ),
                      const SizedBox(width: 8,),
                      const Text('Sign in with your google account',
                        style: TextStyle(
                          color: kBackgroundColor
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





