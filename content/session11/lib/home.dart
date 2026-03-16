import "package:flutter/material.dart";

class Home extends StatelessWidget{
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: .vertical,
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            spacing: 20,
            mainAxisAlignment: .spaceBetween,
            crossAxisAlignment: .center,
            children: [
              Card(
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 12,
                shadowColor: Colors.grey,
                margin: EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical:7),
                  child: Text("my card container")
                )
              ),

              Container(
                width:300,
                alignment: .center,
                child: Row(
                    spacing: 15,
                    children: [
                      Expanded(
                        flex:1,
                        child: Container(color: Colors.greenAccent, height:100), //take explicit height to appear as the automatic expansion in row parent done in width not height
                      ), //make the child widget expand by the available space and relatively to other sibling by the flex value
                      Expanded(
                        flex:2,
                        child: Container(color: Colors.greenAccent, height:100),
                      )
                    ]
                ),
              ),

              SizedBox(height: 80),

              Center(
                child: Container(
                  width: 400,
                  alignment: .center,
                  child: ListTile(
                    isThreeLine: true,
                    leading: Icon(Icons.restaurant, color: Colors.deepOrange),
                    title: Text("The Corner Spot", style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 22, fontWeight: .w500)),
                    subtitle: Text("*****"),
                    trailing: Icon(Icons.favorite, color: Colors.deepOrange),
                    contentPadding: EdgeInsets.symmetric(horizontal: 7, vertical:5),
                    tileColor: Colors.grey[400],
                    selectedTileColor: Colors.grey[500],
                    enabled: true,
                    onTap: () {
                      print("restaurant listTile clicked...");
                    },
                  ),
                ),
              ),

              Center(
                child: Container(
                  width: 150,
                  alignment: Alignment.center,
                  child: MaterialButton(
                    onPressed:(){
                      print("material button pressed...");
                    },
                    height: 10,
                    minWidth:40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
                    elevation:6,
                    color: Colors.grey[400],
                    textColor: Colors.black,
                    child: Row(spacing: 12, children:[Text("order now"),
                      IconButton(onPressed: (){
                        print("arrow icon button clicked...");
                        },
                        icon: Icon(Icons.arrow_circle_right, color: Colors.deepOrange),
                        iconSize: 25,
                        color: Colors.deepOrangeAccent,
                      ),
                    ]),
                  )
                ),
              ),
            ]
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("floating action button pressed...");
        },
        backgroundColor: Colors.grey[400],
        foregroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 4, //shadow depth
        tooltip: "add product",
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}