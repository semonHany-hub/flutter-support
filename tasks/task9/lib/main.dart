import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Center(child: Text("containers + text + rich text + content scrolling", textAlign: .center, style:TextStyle(fontSize:22, fontWeight: .w500))),
          ),
          body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Padding(
              padding:EdgeInsets.only(top:25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing:30,
                children:[
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width - 50,
                      height: 100,
                      alignment: .center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.deepPurple,
                      ),
                      child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: .bold, fontSize: 20))
                    ),
                  ),

                  SizedBox(
                    width: 300,
                    child: Text("applying different text properties for test......gvcdfghjm nbvcvcvbhnjjhbnbvgfcdvfcxcvbhjh",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.purple, fontWeight: FontWeight.w500, fontSize: 15, decoration: TextDecoration.underline, letterSpacing:2, wordSpacing:5, overflow: TextOverflow.ellipsis,)
                    //use GoogleFonts.[type]() in place of TextStyle() abd can custom their styles  or install the font assets then use as a fontFamily.
                    ),
                  ),

                  RichText(
                    text: TextSpan(
                      text: "hello from the parent text span!",
                      style: TextStyle(color: Color(0X55000000)),
                      children:[
                        TextSpan(text: "child1", style: TextStyle(color: Color(0Xff000000))),
                        TextSpan(text: "child2", style: TextStyle(color: Color(0Xff000000))),
                        TextSpan(text: "child3", style: TextStyle(color: Color(0Xff000000))),
                      ]
                    )
                  ),

                  Stack(
                    alignment: .center, //vertical alignment
                    clipBehavior: Clip.hardEdge, //clip the positioned child if exceeded the stack edges
                    children:[
                      Container(
                        width:350,
                        height:300,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),

                      Positioned(
                        top: 140,
                        left:115,
                        child: Text(
                            "Beautiful Place",
                            style: TextStyle(color: Colors.white, fontWeight: .w500, fontSize: 20),
                          ),
                      )
                    ]
                  ),

                  SizedBox(
                    height:300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children:[
                        Container(
                          width: 200,
                          height:200,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(15),
                          )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 200,
                            height:200,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 100,
                            height:100,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 100,
                            height:100,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),

                        Container(
                            width: 100,
                            height:100,
                            decoration: BoxDecoration(
                              color: Colors.blueGrey,
                              borderRadius: BorderRadius.circular(15),
                            )
                        ),
                      ]
                    ), //must be wrapped with container or sized box to prevent its default scrolling from conflicting the parent column scrolling,
                  ),

                  SizedBox(
                    height:300,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text("item $index"),
                        );
                      }
                    ),
                  ), //has higher performance as it built the items gradually while scrolling so it's better to list the items come from API.
                ]
              ),
            ),
          ),
      ),
          debugShowCheckedModeBanner: false,
    );
  }
}