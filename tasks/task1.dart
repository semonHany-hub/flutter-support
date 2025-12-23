import 'dart:io';
void main(){
    /*TASK-> calculator using switch case*/
  num operand1, operand2;
  String operator;
  late int result;
  late String choice;

  while(true) {
    print("enter the first operand of the operation-> ");
    operand1 = num.parse(stdin.readLineSync()!);
    print("the operator-> ");
    operator = stdin.readLineSync()!;
    print("the second operand-> ");
    operand2 = num.parse(stdin.readLineSync()!);
    //the method parse convert the data type from string to the type object calling this method(int- num - double).

    switch (operator) {
      case "+":
        result = (operand1 + operand2).toInt();
        break;
      case "-":
        result = (operand1 - operand2).toInt();
        break;
      case "*":
        result = (operand1 * operand2).toInt();
        break;
      case "/":
        if (operand2 == 0) {
          print("invalid operation (divide by 0)");
          return;
        }
        result = (operand1 / operand2).toInt();
        break;
      default:
        print("unavailable operator!");
    }
    //the method toInt() convert String, num or double to int.
    //other similar methods for type casting (toDouble(), toString()).
    print("the result:"+result.toString());
    //concatenation in dart can't be done between string and another type.

    print("do you want to continue? (Y/N)");
    choice = stdin.readLineSync()!;
    if (choice == "N" || choice == "n" || choice.toLowerCase() == "no")
      return;
  }
}