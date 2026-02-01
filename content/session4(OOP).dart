class Person{
  //attributes (variables)
  String _fName='';
  String _lName='';
  int ?age;
  int ?length;

  //constructors
  Person(){
  }

  Person.parameterized(int age, int length,{required String fname, String lname=''}){
    this.fNameSetter=fname;
    this._lName=lname;
    this.age=age;
    this.length=length;
  }

  Person.directAssign(this.age, this.length, [this._fName='', this._lName='']);

  //actions (functions)

  get fName =>this._fName;

  set fNameSetter(value){
    this._fName=value;
  }

  get lName =>this._lName;

  set lNameSetter(value){
    this._lName=value;
  }

  void info(){
    print("firstName-> ${this.fName}");
    print("lastName-> ${this.lName}");
    print("age-> ${this.age}");
    print("length-> ${this.length}\n");
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
}