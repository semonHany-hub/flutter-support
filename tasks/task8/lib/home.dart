import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'second_task.dart';

class Home extends StatelessWidget{
  const Home({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title:Center(
          child:Text("About Me", style: TextStyle(color: Colors.white)),
        ),
      ),
          body:SingleChildScrollView( //this widget enable scrolling the screen body ig overflowed
            child: SizedBox(
              width:double.infinity,
              child: Column(
                spacing:20,
                crossAxisAlignment: CrossAxisAlignment.center,
                      children:[
                        Column(spacing: 7, children:
                          [Text("Semon hany", style: TextStyle(color: Colors.pinkAccent, fontSize: 25)),
                          Text("MEAN developer", style: TextStyle(color:Colors.pink, fontSize:30, fontWeight:.bold))]
                        ),
                        Image.asset("images/identity.jpg", width:200),
                        SizedBox(width: double.infinity, child:Row(mainAxisAlignment: MainAxisAlignment.center, children:[Text("21", style:TextStyle(fontWeight: .bold)), Text(" years old...")])),
                        Container(
                          width:400,
                          margin: EdgeInsets.only(top: 20),
                          child:Column( crossAxisAlignment: .center, spacing:20, children:[
                            Text("Contact Me", style:TextStyle(fontWeight:.bold, fontSize:20)),
                            SizedBox(
                              width:300,
                              child: Column(spacing:17, crossAxisAlignment: .center, children:[
                                Row(spacing:16, children: [SvgPicture.asset('images/WhatsApp.svg', width:40, fit: BoxFit.contain), Text("WhatsApp Me")]),
                                Row(spacing:16, children: [SvgPicture.asset('images/Email.svg', width:40), Text("Message Me")]) //Image.asset() doesn't support .svg images so install package flutter_svg then use SvgPicture.asset()
                              ]),
                            ),
                          ]),
                        ),
                        ElevatedButton(
                          child: Text("next task->", style: TextStyle(color: Colors.pink, fontSize: 20)),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondTask()));
                          }
                        )
                      ]
                  ),
            ),
          ),
    );
  }
}