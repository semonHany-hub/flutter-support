import 'package:flutter/material.dart';
import "./counter.dart";
import "./Profile.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Session 10',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: CounterWidget(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes:{
        "/": (context)=> const CounterWidget(),
        "/profile": (context)=> const Profile(name: "semon hany"),
      }
    );
  }
}
