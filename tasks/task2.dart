import 'dart:io';

void main(){
  const PI=3.14159;
  print("enter the radius of a circle to calculate its area-> ");
  double R=double.parse(stdin.readLineSync()!);
  double area=PI*R*R;
  print("A= "+ area.toStringAsFixed(4)); //specifying the number of digits after the floating point
  //task1

  print("enter a number value to apply the series summation with general term [(-1)^n*n]");
  int n=int.parse(stdin.readLineSync()!);
  int sum=0;
  for (int i=1; i<=n; i++){
    if(i%2==1){
      sum+= -1*i;
    }
    else{
      sum+=i;
    }
  }
  print("the summation-> $sum");
  //task2

  print("enter a number to find if there's a positive prime number less than it and divisible by 13 or not->");
  n=int.parse(stdin.readLineSync()!);
  if(n>=13)
    print("Yes");
  else
    print("NO");
  //we sure that the prime number divisible only by 1 or itself so this prime number will ofcorse be 13
  //task3

  print("enter three grades between 1 and 10.00 to calculate their weighted average->");

  double g1=double.parse(double.parse(stdin.readLineSync()!).toStringAsFixed(1));
  double g2=double.parse(double.parse(stdin.readLineSync()!).toStringAsFixed(1));
  double g3=double.parse(double.parse(stdin.readLineSync()!).toStringAsFixed(1));

  double weighted_average=(g1*2 +g2*3 + g3*5)/(2+3+5); //the weighted average law: (sum of multiplying each value with its corresponding weight) divided by weights summation
  print("MEDIA = "+weighted_average.toStringAsFixed(1));
  //task4

  print("enter two integer numbers to find the summation of the last digit of both->");
  int x=int.parse(stdin.readLineSync()!);
  int y=int.parse(stdin.readLineSync()!);
  print(x%10 + y%10);
 //to extract the last digit from a number mathematically we use modulus technique 
 //as we ensure the 0-ending number is the only one divisible by 10 and then modulus will be (target digit -0).

 //task5
}