import 'package:flutter/material.dart';
import 'package:hackathon_pro/auth_pages/login_pages.dart';
import '../components/constants.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Register_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: const [
                    Text('P',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 80,
                          fontFamily: 'SassyFrass'
                      ),
                    ),
                    Text('ello',
                      style: TextStyle(
                          fontSize: 15,
                          fontFamily: 'SassyFrass'
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                const Text('Let\'s create an account for you',
                  style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                  ),
                ),
                const SizedBox(height: 20,),
                TextFieldWidget(
                  hintText: 'email',
                ),
                const SizedBox(height: 10,),
                TextFieldWidget(
                  hintText: 'password',
                ),
                const SizedBox(height: 10,),
                TextFieldWidget(
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
                    const Text('Already have an account ',
                      style: TextStyle(
                          color: kPrimaryColor
                      ),
                    ),
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
    );
  }
}

class TextFieldWidget extends StatelessWidget {

  final String hintText;
  TextFieldWidget({required this.hintText});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: TextField(
        decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Colors.grey[500],
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(color: Colors.grey)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.white54)
            ),
            fillColor: Colors.grey[400],
            filled: true
        ),
      ),
    );
  }
}
