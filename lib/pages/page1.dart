import 'package:flutter/material.dart';
import 'package:hackathon_pro/constants.dart';
import 'package:hackathon_pro/files/file_one.dart';



class Page1 extends StatefulWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {


  int bodyTitle = 0;
  int bodyText = 0;
  
  @override

  

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: const Text('C++',
        style: TextStyle(
          fontFamily: "SassyFrass",
        ),
        ),
        backgroundColor: kPrimaryColor,
        centerTitle: true,
        toolbarHeight: 100.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft:  Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          )
        ),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            setState(() {
             
              bodyText--;
              bodyTitle--;

               if(bodyText < 0){
                bodyText = 0;
                bodyTitle = 0;
              }
            });
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.list),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                
                bodyText++;
                bodyTitle++;

                if(bodyText > 2){
                  bodyText = 2;
                  bodyTitle = 2;
                }
              });
            }, 
            icon: const Icon(Icons.arrow_forward_ios)),
          
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Expanded(
                child: Text(titles[bodyTitle],
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: "SassyFrass",
                  color: kPrimaryColor,
                ),
                ),
              ),
            ),
             const SizedBox(height: 8.0),
             Card(
               color: kBackgroundColor,
               shape: const RoundedRectangleBorder(
                 borderRadius: BorderRadius.all(Radius.circular(10)),
               ),
               elevation: 2.0,
               child: Padding(
                 padding: const EdgeInsets.all(18.0),
                 child: Text(texts[bodyText],
                 style: const TextStyle(
                   fontFamily: "SassyFrass",
                   fontWeight: FontWeight.bold,
                 ),
                 )),
               
             ),
          ],
        ),
      ),
      
      
    );
  }
}