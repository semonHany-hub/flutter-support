import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import "./Profile.dart";

class  CounterWidget extends StatefulWidget {
  const CounterWidget ({super.key});

  @override
  State<CounterWidget> createState() {
    return CounterWidgetState();
  }
}

class CounterWidgetState extends State<CounterWidget>{
  //State class has no self constructor
  int _counter= 0;
  void _increment (){
    setState(()=>{_counter++});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // title: Center(child: Text("my counter", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.black,),
      body:Align(
        alignment: Alignment.center,
        child: Column(
          spacing: 30,
          mainAxisAlignment: .center,
          children:[
            Text("Counter-> $_counter", style: TextStyle(color: Colors.deepPurple, fontSize: 35, fontWeight: .bold,)),
            ElevatedButton(
              onPressed: _increment,
              child: const Text("increment by 1")
            ),
            SizedBox(height:50),
            ElevatedButton(
              // onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const Profile(name: "semon hany")));},
              onPressed: ()=>{Navigator.pushNamed(context, "/profile", arguments: {"semon hany"})},
              child: Text("<- next screen"),
            )
          ]
        ),
      ),
    );
  }
}