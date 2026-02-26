import 'package:flutter/material.dart';
import 'forth_task.dart';

class ThirdTask extends StatelessWidget{
  const ThirdTask({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: MediaQuery.of(context).size.height),
            child: Column( //the column by default take the height of its content and can't be set using containers. only by constrainedBox.
              spacing:20,
              mainAxisAlignment: .spaceBetween,
              children:[
              Container(
                width: double.infinity,
                alignment: Alignment.center, //doesn't work with full width
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical:12), //padding between the container and its child, unlike the Padding widget which represent the padding between the container and its parent.
                decoration: BoxDecoration(color: Colors.brown, borderRadius: BorderRadius.circular(5)),
                child: Row(mainAxisAlignment:.spaceBetween, crossAxisAlignment:.center, children:[
                  Text("The Cozy Cup", textAlign: TextAlign.center, style: TextStyle(color: Colors.white, backgroundColor:Color(0X00003478), fontSize: 30, fontWeight:.bold)), //alignment with text props or containers doesn't work when they are inside row
                  Text("2/11/2020 10:20:45", textAlign: .right, style: TextStyle(fontSize:15)),
                ])
              ),
                Container(
                  width:500,
                  margin:EdgeInsets.only(right:200, left:200),
                  child:Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: Column(
                      crossAxisAlignment: .center,
                      spacing:15,
                      children:[
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[
                          Text("Espresso"),
                          Text("5\$"),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[
                          Text("Rose Cardamom Latte"),
                          Text("6\$"),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[
                          Text("Turmeric Latte"),
                          Text("8\$"),
                        ]),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children:[
                          Text("Hot Chocolate"),
                          Text("7\$"),
                        ]),
                      ]
                    ),
                  )
                ),
                SizedBox(
                  width:200,
                  child:Row(mainAxisAlignment:.spaceAround, children:[
                    Text("Total Price: ", style:TextStyle(fontSize:20, fontWeight:.bold)),
                    Text("26\$", style: TextStyle(fontSize:15,)),
                  ]
                  )
                ),
                ElevatedButton(child: Text("next task ->", style: TextStyle(color:Colors.brown, fontSize:15)),
                    onPressed:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> ForthTask()));}
                )
              ]
            ),
          ),
        ),
    );
  }
}