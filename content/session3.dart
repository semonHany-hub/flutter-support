import 'dart:io';

void main(){
  //List

  // List<String> names=["semon", "hany", "adly"];
  // final names=["semon", "hany", "adly"]; //here declared variable follow dynamic type inference technique
  // final names=<String>[];
  var names=["semon", "hany", "adly"];

  for(int i=1; i<=3; i++){
    print("enter a name to add to the list-> ");
    names.add(stdin.readLineSync()!); //names.append() in python
  }
  print(names);

  names.insert(0, "insert at begin");
  names.remove("hany");
  print("after insert at 0 and remove 'hany' $names");

  names.removeAt(0);
  names[1]="nada";
  print("after remove element at 0 and update at 1 to 'nada' $names");

  print("'semon' exist in the list? -> ${names.contains('semon')}");
  print ("'hana' is number ${names.indexOf('hana')+1}");
  names.addAll(["ali", "ahmed", "john"]);
  print("list after skipping the first three names-> ${names.sublist(3, )}");
  
  names.sort();
  print("after sorting names ascendingly alphabetically $names");

  print("the reversed names-> ${names.reversed}"); //property reversed return a reversed iterable from the original list

  var reversedNames=names.reversed.toList();

  print("first name from sorted reversed list-> ${reversedNames.first}\nlast name-> ${reversedNames.last}\nnumber of available reversed names-? ${reversedNames.length}");

  print("names before clearing isn't empty?-> ${names.isNotEmpty}");
  names.clear();
  print("names after clearing is empty?-> ${names.isEmpty}");


  //Set
  names=["semon", "hany", "adly"];
  Set<String> namesSet=names.toSet(); //dart automatically use liked-hash-set which preserves the insertion order of elements
  // namesSet.indexOf("semon"); //throw error as sets don't allow indexing unlike lists.
  print(namesSet);

  namesSet.add("sosanna");
  namesSet.remove("semon");
  print(namesSet);

  print("set contains 'adly'?-> ${namesSet.contains("adly")}");
  namesSet.addAll(["ali", "ahmed", "john", "adly"]); // duplicate values automatically removed from the set (should have unique values)
  print(namesSet);

  namesSet.clear();
  print(namesSet.length);


  //Map
  print("Maps...");
  Map<String, String> managerInfo={
    "name": "ayman adly",
    "address": "Egypt, Qena",
    "phone":"01288564384",
  };

  print(managerInfo["phone"]);
  print("manager data contains its name?-> ${managerInfo.containsKey("name")}");
  print("manager lives in Egypt, Qena governorate?-> ${managerInfo.containsValue("Egypt, Qena")}");

  managerInfo["randomKey"]="blabla";
  print(managerInfo);
  managerInfo.remove("randomKey");
  print(managerInfo.length);
  managerInfo.clear();
  print(managerInfo);


  print("\n****loop using for-in****");

  print("*loop on names List");
  for(String name in names){
    print(name);
  }

  namesSet={"semon", "hany", "adly"};

  print("*loop on names Set");
  for(String name in namesSet){
    print(name);
  }

  managerInfo={
    "name": "ayman adly",
    "address": "Egypt, Qena",
    "phone":"01288564384",
  };

  print("*loop on managerInfo Map with entries");
  for(var entry in managerInfo.entries){
    print("${entry.key} : ${entry.value}"); //the first entry will be like this-> MapEntry(name: ayman adly)
  }

  print("*loop on managerInfo Map with keys");
  for(String key in managerInfo.keys){
    print("$key : ${managerInfo[key]}");
  }


  print("\n****loop using forEach****");

  print("*loop on names List");
  names.forEach((name){
    print(name);
  }); //with callback anonymous function

  namesSet={"semon", "hany", "adly"};

  print("*loop on names Set");
  namesSet.forEach((name){
    print(name);
  });

  print("*loop on managerInfo Map");
  managerInfo.forEach((key, value)=> print("$key : $value")); //with anonymous arrow function


  //Functions
  print("*****Functions*****");

  void sum(int n1, int n2){
    int sum=n1+n2;
    print("summation-> $sum");
  }

  sum(6,2);

  /*void sum(int n1, int n2, int n3){
    int sum=n1+n2;
    print("summation-> $sum");
  }*/
  //dart doesn't support function overloading 
  //(function with the same name but with different parameters either in number or datatype or with different return type)
  //, instead it allow main and optional parameters (positional, named).

  String fullname(String first, {String last='', required String family}){
    String full_name=first+" "+last+" "+family;
    return full_name;
  }

  // print(fullname("semon", "adly", "hany")); //with optional positional
  print(fullname("semon", family: "adly")); //with optional named
  //optional parameters should have default value to avoid NULL.
  //required named parameter mustn't have default value.
}