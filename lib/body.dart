import 'package:flutter/material.dart';
import 'constants.dart';
import 'pages/page1.dart';


class Body extends StatefulWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 100.0,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                    )
                  ),
                  
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: const Text('programming world',
                    style: TextStyle(
                      color: kBackgroundColor,
                      fontWeight: FontWeight.bold,
                      fontFamily: kFamily
                      //fontSize: 20.0,
                    ),
                    ),
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10.0),
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 10),
                          blurRadius: 50.0,
                          color: kPrimaryColor.withOpacity(0.23)

                        )
                      ]
                    ),
                    ),
                )
              ],
            ),
          ),
          Card(
            elevation: 5,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('C++',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),),
              subtitle: const Text('Learn C++ in ease way',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor,
              ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Page1()));
              },
            ),
          ),

          Card(
            elevation: 5,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('Java',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),),
              subtitle: const Text('Learn Java in ease way',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),
              ),
              onTap: () {},
            )
          ),

          Card(
            elevation: 5,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('Flutter',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),),
              subtitle: const Text('Learn Flutter in ease way',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),
              ),
              onTap: () {},
            )
          ),

          Card(
            elevation: 5,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('Python',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),),
              subtitle: const Text('Learn Python in ease way',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),
              ),
              onTap: () {},
            )
          )
        ],
      ),
    );
  }
}