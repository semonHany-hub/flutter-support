import 'dart:io'; //imported in this file to enable using stdin.readLineSync()

void main() {
  print("welcome to my first app with dart..."); 

  print("enter your name->");
  String ?name = stdin.readLineSync(); //'!' used to tell the compiler "i promise the coming value from stdin.readLieSync()! won't be null", instead we can use '?' between the data type and the variable name.
  //the method readLineSync() receives 0 arguments, unlike prompt() in javascript.
  if(name=='' || name=='null' || name=="none")
    name=null;
  name=name ??"guest"; //if name value is 'null' make it equal 'guest' instead, otherwise assign it to its original value.
  print("Hello, $name"); //unlike javascript, it's not necessary to use back-tick to include variables inside string sequence
  //in case of dot or bracket chaining of the variable we put it inside ${ }

  /*Data types in dart:*/
  //int, double(floating point numbers only), num(include both int and double numbers), String, bool(with values true, false)
  dynamic inclusiveVariable = "semon";
  inclusiveVariable = 35;
  inclusiveVariable = true;
  print("dynamic declared variable is not double(it's boolean)? "+(inclusiveVariable is! double).toString());
  inclusiveVariable = 75.8;
  print("dynamic declared variable is String(it's double)? "+(inclusiveVariable is String).toString());
  //weak data_type using the keyword 'dynamic' telling the compiler this variable takes its type dynamically from its assigned value
  //and can be assigned later to any other data_type.
  
  // late String delayedVariable;
  // delayedVariable = "semon";
  // delayedVariable=24;
  //the keyword 'late' tell the compiler that the variable with determined type in declaration will be assigned an initial corresponding value later.

  // var variable="semon";
  // variable=47;
  // variable="semon hany";
  //var declared variable its type determined automatically in declaration and can't be changed later. only a value of the same type can be reassigned later.

  // const constant=3.14;
  // constant=2;
  //const declared variable can't be reassigned later at all.

  // print("enter your last name->");
  // final finalVariable=stdin.readLineSync()!;
  // finalVariable="adly";
  //final declared variable like const declared one can't be reassigned.
  //the difference between const and final is that the const reassignment during the compilation time, while final reassignment used in runtime for value from user or database.
}
