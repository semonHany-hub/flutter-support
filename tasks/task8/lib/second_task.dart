import 'package:flutter/material.dart';
import 'third_task.dart';

class SecondTask extends StatelessWidget{
  const SecondTask({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(width:1, color:Colors.black12),
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        child: DefaultTextStyle( //used to apply styles on multiple text widgets
          style: TextStyle(color:Colors.white, fontSize:20),
          child: Column(
            mainAxisAlignment: .spaceBetween,
            children:[
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Text("Flutter is awesome!!!", textAlign: TextAlign.center),
            ),
            SizedBox(width:400, child: Text("Flutter is awesome!!!", textAlign: TextAlign.center)),
            Align(alignment: Alignment.bottomRight, child: Padding(
              padding: const EdgeInsets.only(bottom:5, right:5),
              child: Text("Flutter is awesome!!!"),
            )),
              ElevatedButton(child: Text("next task ->", style: TextStyle(fontSize:15, fontWeight:.bold, color:Colors.black26)),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> ThirdTask()));
              })
          ]),
        ),
      )
    );
  }
}