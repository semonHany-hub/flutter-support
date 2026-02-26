import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
          title:SizedBox(
              width: double.infinity, //set to the full screen width (100%)
              // height: 200,
              child: Text("App bar", textAlign: TextAlign.center), //child property must be the last inside a wrapper widget
            ) //to set a text widget dimensions we wrap it with Container or SizedBox widget.
      ),
      body: Padding(
        padding: const EdgeInsets.only(left:15),
        child: Column(
            crossAxisAlignment: .start, //x-axis
            mainAxisAlignment: .spaceAround, //y-axis
            children:[
              Align( //Center widget center its child widget directly without need for alignment property.
                alignment: Alignment.topCenter,
                child: Text("Hello world!", textAlign: TextAlign.center)
              ), //Align (has property alignment) used for aligning directly without need to set dimension then textAlign for child Text widget.
              Text("It's my first flutter app"),
              Text("I'm so enthusiastic!"),
               Row(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Icon(Icons.twenty_one_mp_rounded),
                  Text("It's my age now"),
                  Text("it seems not a number for ages, but it works👌🏼"),
                ]
              )
            ]
        ),
      )

    ); //control the screen view
  }
}