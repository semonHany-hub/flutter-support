import 'package:flutter/material.dart';

class ForthTask extends StatelessWidget{
  const ForthTask({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(

    );
  }
}

// void main(){
//   var numbers = [3,12,7,20,5,18,33,20,3,45];
//   Iterable bigThan10= numbers.where((number)=> number>10); //step1
//   // numbers.retainWhere((number)=> number>10);
//   num sum=0;
//   for(int number in bigThan10){
//     sum+= number;
//   } //step2
//
//   print("sum-> $sum");
//
//   var filteredList=bigThan10.toList(); //type casting with as List<int> will throw exception of 'Iterable of num isn't subtype of List<iny>'
//   print("filter bigger than 10 list-> $filteredList");
//
//   sum=0;
//   int count=0;
//   var result=filteredList.map((number){
//     sum+=number;
//     count++;
//     return (count, sum) ;
//   }); //step3
//
//   print(result);
//
//   var operatedList=filteredList.map((number){
//     return HOF(number, mathematicalOperation);
//   }); //step4
//
//   print("apply mathematical operation-> $operatedList");
//
//   print(CheckEven(9).isEven()); //step5
//
//   CallableClass mult= CallableClass(9); //step6
//   print(CheckEven(mult(2)).isEven());
// }
//
// typedef int MonoParam (int number);
//
// int mathematicalOperation(int number){
//   return number*6-4;
// }
//
// int HOF(int number, MonoParam func){
//   return func(number);
// }
//
// extension CheckEven on int{
//   bool isEven(){
//     if(this%2==0) {
//       return true;
//     } else {
//       return false;
//     }
//   }
// }
//
// class CallableClass{
//   int number;
//   CallableClass(this.number);
//
//   int call(int val){
//     return val* this.number;
//   }
// }