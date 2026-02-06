import 'dart:io';

class Person{
  //attributes (variables)
  String _fName='';
  String _lName='';
  int ?age;
  double ?length;

  //constructors
  Person(){
  }

  Person.parameterized(int age, double length,{required String fname, String lname=''}){
    this.fNameSetter=fname;
    this._lName=lname;
    this.age=age;
    this.length=length;
  }

  Person.directAssign(this.age, this.length, [this._fName='', this._lName='']);

  //actions (functions)

  String get fName =>this._fName;

  set fNameSetter(value){
    this._fName=value;
  }

  get lName =>this._lName;

  set lNameSetter(value){
    this._lName=value;
  }

  void info(){
    print("\nfirstName-> ${this.fName}");
    print("lastName-> ${this.lName}");
    print("age-> ${this.age}");
    print("length-> ${this.length}");
  }
}


class Student extends Person{ //single inheritance
  String ?faculty;
  double ?_GPA;

  Student(String faculty, int age, double length, String f_name, String l_name) :super.directAssign( age, length, f_name, l_name){
    this.faculty=faculty;
  }

  double? GPA(){
    return _GPA;
  }

  setGPA(double newValue){
    _GPA=newValue;
  }

  @override
  void info(){
    super.info();
    print("GPA-> ${GPA()}");
  }
}

class Parent extends Person{ //hierarchical inheritance (multiple separate classes(sub_classes) inherit from the same parent (super class))
  bool ?isEmployee;
  Parent(String f_name, String l_name, int age, double length, this.isEmployee) :super.directAssign(age, length, f_name, l_name);

  void hairColor(){
    print("parent $fName has black hair");
  }

  void skinColor(){
    print("parent $fName has white skin");
  }

  @override
  void info(){
    super.info();
    print("isEmployee-> $isEmployee");
    hairColor();
    skinColor();
  }
}

class Child extends Parent{ //multilevel inheritance (a class inherit from another class which in turn inherit from another)
  bool ?isPolite;

  Child(super.age, super.length, super.f_name, super.l_name, super.isEmployee, this.isPolite);

  @override
  void hairColor(){
    print("child $fName has brown hair");
  }

  @override
  void skinColor(){
    print("child $fName has bald skin");
  }

  @override
  void info(){
    super.info();
    print("isPolite-> $isPolite");
  }
}

void main(){
  Person per1=new Person(); //the default constructor exist by default in the class with no other constructors doesn't need to be explicitly declared
  per1.fNameSetter="semon";
  per1.lNameSetter="hany";
  per1.age=21;
  per1.info();

  Person per2=new Person.directAssign(36, 200, "", "ayman");
  per2._fName="john"; //encapsulated attributes can't be accessed directly from another module not from the original one.
  per2.info();

  Person per3=Person.parameterized(45, 170, fname:"ali");
  per3.lNameSetter="mohamed";
  per3.info();

  Student std1=Student("FCI", 20, 170, "aya", "sayed");

  while(true){
    try{
      stdout.write("\nenter your GPA, ${std1.fName}-> ");
      double ?GPA= double.tryParse(stdin.readLineSync()??'-1');
      if(GPA!=null && GPA>=0 && GPA<=4){
          std1.setGPA(GPA);
          break;
      }
      else{
        print("please enter valid GPA!");
      }
    }catch(err){
      print(err);
    }
  }
  std1.info();

  Parent p=Parent("ayman", "fathalla", 53, 165, true);
  p.info();

  Child p_child=Child("mena", "ayman", 24, 230, true, true);
  p_child.info();

  print('\n'+BankAccount.bankName);
  BankAccount.bankPolicy();

  BankAccount bc=BankAccount("Ahmed", 40000);
  bc.showDetails();
}

class BankAccount{
  static String bankName= "National Bank Of Egypt";
  String ?owner;
  double ?balance;
  AccountStatus status=AccountStatus.inactive;

  BankAccount(this.owner, this.balance);

  static 
  bankPolicy(){
    print("Welcome to $bankName. We charge 0% fees!");
  }

  showDetails(){
    if(this.status==AccountStatus.inactive)
      print("sorry, your accout is inactive now!");
    else
      print("the owner $owner has balance $balance");
  }
}

enum AccountStatus{
  active,
  inactive
}