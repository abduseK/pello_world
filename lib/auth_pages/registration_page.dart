import 'package:flutter/material.dart';
import 'package:hackathon_pro/auth_pages/login_pages.dart';
import 'package:hackathon_pro/auth_pages/text_widget.dart';
import '../components/constants.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Register_Page> {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/login2.png'),
            fit: BoxFit.cover
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
                  const SizedBox(height: 10,),
                  const Text('Let\'s create an account for you',
                    style: TextStyle(
                      fontSize: 18,
                      color: kBackgroundColor,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  ExtractedTextWidget(
                    obscureText: false,
                    controller: emailController,
                    hintText: 'email',
                  ),
                  const SizedBox(height: 10,),
                  ExtractedTextWidget(
                    obscureText: true,
                    controller: passwordController,
                    hintText: 'password',
                  ),
                  const SizedBox(height: 10,),
                  ExtractedTextWidget(
                    obscureText: true,
                    controller: confirmPasswordController,
                    hintText: 'confirm password',
                  ),
                  const SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28.0),
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: const Center(
                        child: Text('Register',
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
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?',
                        style: TextStyle(
                            color: kBackgroundColor
                        ),
                      ),
                      const SizedBox(width: 6,),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Login_Page()));
                        },
                        child: const Text('Sign In',
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

