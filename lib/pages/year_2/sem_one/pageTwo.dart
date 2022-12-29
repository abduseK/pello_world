
import 'package:flutter/material.dart';
import 'package:hackathon_pro/components/constants.dart';
import 'package:hackathon_pro/files/year_two/sem1/program_one.dart';



class Page2 extends StatefulWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {


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

                if(bodyText > 7){
                  bodyText = 7;
                  bodyTitle = 7;
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
                child: Text(titles2[bodyTitle],
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
                 child: Text(texts2[bodyText],
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