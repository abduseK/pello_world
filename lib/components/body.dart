import 'package:flutter/material.dart';
import 'constants.dart';
import '../pages/page1.dart';
import 'package:hackathon_pro/pages/year_2/sem_one/pageTwo.dart';
import 'package:hackathon_pro/pages/year_2/sem_one/pageThree.dart';



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
          const SizedBox(height: 50.0,),

          Card(
            child: ExpansionTile(
            title: const Text('CS Year One',
              style: TextStyle(
                color: kTextColor
              ),
            ),

            children: [
              ExpansionTile(
                title: const Text('                   Semester One',
                style: TextStyle(
                  color: kTextColor
                ),
                ),
                children: [
                  Card(
            elevation: 0,
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

                ],
              ),

              ExpansionTile(
                title: const Text('                   Semester Two',
                style: TextStyle(
                  color: kTextColor
                ),
                ),
                children: [
                  Card(
            elevation: 0,
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


                ],
              ),

              
            ],
          ),
            elevation: 5,
            color: kBackgroundColor,
          ),
          const SizedBox(height: 10.0,),
          Card(
            child: ExpansionTile(
            title: const Text('CS Year Two',
              style: TextStyle(
                color: kTextColor
              ),
            ),

            children: [
              ExpansionTile(
                title: const Text('                   Semester One',
                style: TextStyle(
                  color: kTextColor
                ),
                ),
                children: [
                  Card(
            elevation: 0,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('Programming Two',
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
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Page2()));
              },
            ),
          ),

           Card(
            elevation: 0,
            color: kBackgroundColor,
            child: ListTile(
              title: const Text('Fundamentals of CS',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor
              ),),
              subtitle: const Text('Learn Fundamentals of CS in ease way',
              style: TextStyle(
                fontFamily: kFamily,
                color: kPrimaryColor,
              ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Page3()));
              },
            ),
          ),

                ],
              ),

              ExpansionTile(
                title: const Text('                   Semester Two',
                style: TextStyle(
                  color: kTextColor
                ),
                ),
                children: [
                  Card(
            elevation: 0,
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

                ],
              ),
              
            ],
          ),
            elevation: 5,
            color: kBackgroundColor,
          ),
          
        ],
      ),
    );
  }
}