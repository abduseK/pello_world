import 'package:flutter/material.dart';
import 'body.dart';
import 'constants.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        elevation: 0,
      title: const Text('Pello World',
      style: TextStyle(
        color: kBackgroundColor,
        fontFamily: "SassyFrass",
        fontWeight: FontWeight.bold
      ),),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              height: 150.0,
              child: const Padding(
                padding: EdgeInsets.all(65.0),
                child: Text('welcome to pello',
                style: TextStyle(
                  color: kBackgroundColor,
                ),
                ),
              ),
              decoration: const BoxDecoration(
                color: kPrimaryColor
              ),
            )
          ],
        ),
        
      ),

      body: const Body(),
      
    );
  }
}