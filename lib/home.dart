import 'package:flutter/material.dart';
import 'package:hackathon_pro/files/file_one.dart';
import 'body.dart';
import 'constants.dart';



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
            )
          ],
        ),
        
      ),

      body: PageView(
        controller: PageController(),
        scrollDirection: Axis.vertical,
        children: const [
          Page2(),
          Body(),
        ]
      ),
      
    );
  }
}


class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(text: 'Welcome to pello\n\n',
              style: TextStyle(
                fontSize: 30.0
              )
              ),
              TextSpan(text: 'This app will give you what u need, ',
              style: TextStyle(
                fontFamily: "SassyFrass",
              ),
              ),
              TextSpan(
                text: 'we have \n\n        - all years modules\n'
                      '        - project samples\n'
                      '        - assignment and worksheets\n'
                      '        - technology books',
                style: TextStyle(
                  fontFamily: "SassyFrass",
                  color: Colors.teal
                )
              )
            ]
          ),
        ),
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(70.0),
            bottomRight: Radius.circular(70.0)
          )
        ),
        toolbarHeight: 300.0,
        backgroundColor: kPrimaryColor,
      ),

      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('Scroll',
            style: TextStyle(
              color: Colors.teal,
              fontFamily: "SassyFrass"
            ),
            ),
            Icon(Icons.arrow_downward_rounded,
            color: Colors.teal,
            )
          ],
        )
      )
      
    );
  }
}