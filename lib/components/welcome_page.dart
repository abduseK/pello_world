import 'package:flutter/material.dart';
import 'package:hackathon_pro/components/constants.dart';



class WelcomePage extends StatelessWidget {
  const WelcomePage({ Key? key }) : super(key: key);

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