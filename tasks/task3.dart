import 'dart:io';

void main(){
  for(int i=1; i<=100; i++){
    if(i%7==0)
      print(i);
  }
  //print numbers divisable by 7 from 0 to 100

  var nums=<int> [ 5 , 10 , 15 ,35 ];
  for(int num in nums){
    print(num);
  }
  nums.add(10);
  nums.remove(10);
  print(nums);
  //task 2

  List<num> list=[];
  bool keep_going=true;
  while(keep_going){
    print("enter a number to calculate the sum of it with previous entered nums->");
    list.add(int.parse(stdin.readLineSync()!));
    print("do you want to continue? (yes, no)");
    String choice=stdin.readLineSync()!;
    if(choice.toLowerCase()=="yes")
      keep_going=true;
    else
      keep_going=false;
  }
  print(list_sum(list));
  //task 3

  print("enter two nums to find their multiplication result->");
  num num1=num.parse(stdin.readLineSync()!);
  num num2=num.parse(stdin.readLineSync()!);
  print("do you want to enter another num to divide the product result by? (yes/no)");
  if((stdin.readLineSync()!).toLowerCase()=='yes'){
      print("enter the third num to divide by->");
      num num3=num.parse(stdin.readLineSync()!);
      print(compute(num1: num1, num2: num2, num3: num3));
  }
  else
    print("product result-> ${compute(num1: num1, num2: num2)}");
  //task 4

  var duplicatedList= ["semon", 6, 2, "hany", 6, "semon"];
  var uniqueSet=duplicatedList.toSet();
  var uniqueList=uniqueSet.toList();
  print("the list with unique values-> $uniqueList");
  //task 5

  Map<String, List<num>> students_grades={
    "semon": [74, 63.24, 25, 84.64],
    "ali": [46.85, 84, 70.74, 74],
    "ahmed": [85.74, 46, 73.64, 92.46]
  };

  num highest_grades_average=0;
  String highest_grades_student="semon";

  for(var entry in students_grades.entries){
    num grades_avg=grades_average(entry.value);
    if(grades_avg>highest_grades_average){
      highest_grades_average=grades_avg;
      highest_grades_student=entry.key;
    }
  }
  print("student with highest grades on average-> $highest_grades_student: ${students_grades[highest_grades_student]}");
  //task 6

  print("enter an integer number to check if it's prime or not->");
  int n=int.parse(stdin.readLineSync()!);
  if(isPrime(n))
    print("YES, it's a prime...");
  else
    print("NO, it isn't a prime...");
  //task7
}

num list_sum(List<num> list){
  num sum=0;
  for(int i=0; i<list.length; i++){
    sum+=list[i];
  }
  return sum;
}

num? compute({required num num1, required num num2, num? num3}){
  if(num3==null)
    return num1*num2;
  else
    return num1*num2/num3;
}

num grades_average(List<num> grades){
  return list_sum(grades)/4;
}

bool isPrime(int num){
  for(int i=2; i<num; i++){
    if(num%i==0)
      return false;
  }
  return true;
}