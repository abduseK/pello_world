import 'package:flutter/material.dart';
import 'body.dart';
import 'constants.dart';
import 'package:hackathon_pro/components/welcome_page.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final controller = PageController(
    initialPage: 1,
  );
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
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: Row(
                children: const [
                  Icon(Icons.settings),
                  SizedBox(width: 8,),
                  Text('Settings')
                ],
              ),
            )
          ],
        ),
        
      ),

      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.vertical,
        children: const [
          WelcomePage(),
          Body(),
        ]
      ),
      
    );
  }
}


