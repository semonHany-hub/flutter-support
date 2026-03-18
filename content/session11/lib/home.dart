import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  bool isOn = true;
  bool notificationToggler = false;
  int genderOption = 2;
  Map<String, bool> favoriteSnacks = {
    "chocolate": true,
    "chips": false,
    "iceCream": true,
    "coffee": true,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            spacing: 40,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Card(
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                elevation: 12,
                shadowColor: Colors.grey,
                margin: const EdgeInsets.all(10),
                clipBehavior: Clip.antiAlias,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
                  child: Text("my card container"),
                ),
              ),

              Container(
                width: 300,
                alignment: Alignment.center,
                child: Row(
                  spacing: 15,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.greenAccent,
                        height: 100,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        color: Colors.greenAccent,
                        height: 100,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 80),

              Center(
                child: Container(
                  width: 400,
                  alignment: Alignment.center,
                  child: ListTile(
                    isThreeLine: true,
                    leading: const Icon(Icons.restaurant, color: Colors.deepOrange),
                    title: const Text(
                      "The Corner Spot",
                      style: TextStyle(
                        color: Colors.deepOrangeAccent,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    subtitle: const Text("*****"),
                    trailing: const Icon(Icons.favorite, color: Colors.deepOrange),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 7, vertical: 5),
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
                    onPressed: () {
                      print("material button pressed...");
                    },
                    height: 10,
                    minWidth: 40,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    elevation: 6,
                    color: Colors.grey[400],
                    textColor: Colors.black,
                    child: Row(
                      spacing: 12,
                      children: [
                        const Text("order now"),
                        IconButton(
                          onPressed: () {
                            print("arrow icon button clicked...");
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Colors.deepOrange,
                          ),
                          iconSize: 25,
                          color: Colors.deepOrangeAccent,
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Switch(
                value: isOn,
                onChanged: (value) {
                  setState(() {
                    isOn = value;
                  });
                },
                activeTrackColor: Colors.deepOrangeAccent,
                activeColor: Colors.grey[400],
                inactiveTrackColor: Colors.grey[400],
                inactiveThumbColor: Colors.deepOrange,
                padding: const EdgeInsets.all(5),
              ),

              Container(
                width: 500,
                alignment: Alignment.center,
                child: SwitchListTile(
                  title: const Text("Notifications"),
                  subtitle: const Text("receive app notifications"),
                  secondary: const Icon(Icons.notifications),
                  value: notificationToggler,
                  onChanged: (value) {
                    setState(() {
                      notificationToggler = value;
                    });
                  },
                ),
              ),

              Container(
                width: 500,
                alignment: Alignment.center,
                child: Column(
                  spacing: 10,
                  children: [
                    RadioListTile<int>(
                      title: const Text("Male"),
                      value: 1,
                      groupValue: genderOption,
                      onChanged: (value) {
                        setState(() {
                          genderOption = value!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                    RadioListTile<int>(
                      title: const Text("Female"),
                      value: 2,
                      groupValue: genderOption,
                      onChanged: (value) {
                        setState(() {
                          genderOption = value!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: 500,
                alignment: Alignment.center,
                child: Column(
                  spacing: 10,
                  children: [
                    CheckboxListTile(
                      title: const Text(
                        "chocolate",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,  // FIXED
                        ),
                      ),
                      value: favoriteSnacks["chocolate"],
                      onChanged: (value) {
                        setState(() {
                          favoriteSnacks["chocolate"] = value!;
                        });
                      },
                      tileColor: Colors.grey[400],  // FIXED - lighter grey
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),

                    CheckboxListTile(
                      title: const Text(
                        "chips",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,  // FIXED
                        ),
                      ),
                      value: favoriteSnacks["chips"],
                      onChanged: (value) {
                        setState(() {
                          favoriteSnacks["chips"] = value!;
                        });
                      },
                      tileColor: Colors.grey[400],  // FIXED - lighter grey
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),

                    CheckboxListTile(
                      title: const Text(
                        "coffee",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,  // FIXED
                        ),
                      ),
                      value: favoriteSnacks["coffee"],
                      onChanged: (value) {
                        setState(() {
                          favoriteSnacks["coffee"] = value!;
                        });
                      },
                      tileColor: Colors.grey[400],  // FIXED - lighter grey
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),

                    CheckboxListTile(
                      title: const Text(
                        "iceCream",
                        style: TextStyle(
                          color: Colors.deepOrange,
                          fontSize: 17,
                          fontWeight: FontWeight.w200,  // FIXED
                        ),
                      ),
                      value: favoriteSnacks["iceCream"],
                      onChanged: (value) {
                        setState(() {
                          favoriteSnacks["iceCream"] = value!;
                        });
                      },
                      tileColor: Colors.grey[400],  // FIXED - lighter grey
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),

                    SizedBox(height: 20),

                    ElevatedButton(
                      onPressed: (){
                        showDialog(  //built-in function not widget
                          context: context,
                          builder: (BuildContext context){
                            return AlertDialog(
                              title: Text("Delete"),
                                content: Text("delete item (just print message for e.x)"),
                              actions:[
                                TextButton(
                                  onPressed: (){
                                    Navigator.pop(context); //the dialog context not the screen
                                  },
                                  child: Text("cancel"),
                                ),

                                TextButton(
                                  onPressed: (){
                                    Navigator.pop(context);
                                    print("item deleted successfully");
                                  },
                                  child: Text("delete"),
                                ),
                              ]
                            );
                          }
                        );
                      },
                      style: ButtonStyle(
                        backgroundColor: WidgetStateProperty.all(Colors.red.shade400),
                      ),
                      child: Text("Delete", style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("floating action button pressed...");
        },
        backgroundColor: Colors.grey[400],
        foregroundColor: Colors.deepOrange,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        elevation: 4,
        tooltip: "add product",
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}