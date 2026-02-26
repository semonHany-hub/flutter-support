import 'package:flutter/material.dart';
import 'home.dart';

void main(){
  runApp(const Task8());
}

class Task8 extends StatelessWidget{
  const Task8({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}