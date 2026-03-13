import "package:flutter/material.dart";

class Profile extends StatefulWidget{
  final String name;
   const Profile({super.key, required this.name});

  @override
  State<Profile> createState() {
    return NameState();
  }
}

class NameState extends State<Profile>{
  late String fullName;

  @override
  void initState(){
    super.initState();
    fullName= widget.name;
  }

  void fullNameHandler(String value){
    setState((){fullName=value;});
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        // title: Center(child: Text("User Profile", style: TextStyle(color: Colors.white))),
        backgroundColor: Colors.black,),
      body: Container(
        alignment: .center,
        padding: EdgeInsets.only(top:20),
        child: Column(
            spacing: 30,
            crossAxisAlignment: .center,
            children:[
              Text("Hello, $fullName", style: TextStyle(color: Colors.deepPurple, fontSize: 30, fontWeight: .bold,)),
              Container(
                  width:500,
                  alignment: .center,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black12,
                          offset:Offset(0,5),
                          blurRadius: 5.2),
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  child: TextField(
                    textAlign: TextAlign.start,
                    onChanged: fullNameHandler,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(borderSide: BorderSide(width:1, color:Colors.grey)),
                        focusedBorder: OutlineInputBorder(borderSide: BorderSide(width:2, color:Colors.deepPurpleAccent)),
                        labelText: "your fullName",
                        labelStyle: TextStyle(color:Colors.deepPurple, fontSize: 20),
                        prefixIcon: Icon(Icons.person, color:Colors.deepPurple),
                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical:7),
                    ),
                  )
              ),
              SizedBox(height:50),
              ElevatedButton(
                onPressed: (){Navigator.pop(context);},
                child: Text("previous screen ->"),
              )
            ]
        ),
      ),
    );
  }
}