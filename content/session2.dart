import 'dart:io';

void main(){
  print("enter a number to print the positive even and odd numbers less than it->");
  int ?num;
  num=int.parse(stdin.readLineSync()!);

  print("odd numbers:");
  for(int i=1; i<num; i+=2){
    print("$i");
  }

  print("\neven numbers:");
  for(int i=0; i<num; i+=2){
    print("$i");
  }

  //another solution if unary iterator increment is forced
  print("\nodd numbers:");
  for(int i=1; i<num; i++){
    if(i%2==1)
      print("$i");
  }

  print("\neven numbers:");
  for(int i=0; i<num; i++){
    if(i%2==0)
      print("$i");
  }

  //another more time efficient solution
  for(int i=0; i<num; i++){
    if(i%2==0){
      print("$i-> even");
    }
    else{
      print("$i-> odd");
    }
  }

//  in while loop the initialization is performed before entering the loop, 
//  the condition is inside the loop parenthesis 
//  and the iterator update inside the loop scope.

//  do{...}while() structure executed for only once at least even the condition is not satisfied 
//  as it checked after executing the body.

 //print even numbers between 1 and 50 that are not divisable by 4

 for(int i=1; i<=50; i++){
  if(i%2==0){
    if(i%4!=0)
      print(i);
  }
 }
 print("\n");

 //another solution with conditional operator
 for(int i=1; i<=50; i++){
  if(i%2==0 && i%4!=0){
    print(i);
  }
 }
}