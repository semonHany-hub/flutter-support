import 'dart:async';
void main() async{
  print("first line...");
  Future.delayed(Duration(seconds:5), ()=>{
      print("Hello 1")
  }).then((_)=>{print("Hello 1 then")});

  print("Hello 3"); //both of this line and line 11 took less than 1 second as (Hello 3, 4, 5) all printed before Hello1

  await Future.delayed(Duration(seconds:4), ()=>{print("Hello 4")})
  .then((_)=>{print("Hello 4 then")});
  print("Hello 5");

  Future<int> num= getNumber();
  int num2= await getNumber();
  print("Future<int> num-> $num\nint num after await-> $num2");

  Stream<int> s1=getNumbers();
  s1.listen((event)=>print(event*2), 
  onDone:()=>{print("s1 Done!")}, 
  onError: (e)=>print(e));

  StreamController SC=StreamController<int>.broadcast(); //class declared in dart:async library.
  downloadVideo(SC);
  Stream videoStream=SC.stream;
  StreamSubscription<void> videoSub=videoStream.listen((event) => print("video downloaded by $event%"), cancelOnError:true);
  videoSub.onDone(()=>print("download video completed...")); //called when the streamController closed (finished receiving data);
  videoSub.onError((e)=>print("error downloading video-> $e"));

  videoStream.listen((event) => print("downloaded $event% (sub2)"));
}

Future<int> getNumber()async{
  await Future.delayed(Duration(seconds: 2));
  return 4;
} //return 4 after waiting 2 seconds but as Future value not immediately.

Stream<int> getNumbers() async*{
  yield 1;
    await Future.delayed(Duration(seconds: 2));
  yield 3;
    await Future.delayed(Duration(seconds: 2));
  yield 5;
    await Future.delayed(Duration(seconds: 2));
  yield 7;
    await Future.delayed(Duration(seconds: 2));
  yield 9;
    await Future.delayed(Duration(seconds: 2));
  yield 11;
} //yield used instead of return in Stream to enable return multiple values one by one. works only in function marked by async* not normal async.

void downloadVideo(StreamController streamController)async{
    await Future.delayed(Duration(seconds: 1));
    streamController.add(10);
    await Future.delayed(Duration(seconds: 2));
    streamController.add(30);
    await Future.delayed(Duration(seconds: 2));
    streamController.add(55);
    await Future.delayed(Duration(seconds: 1));
    streamController.add(60);
    await Future.delayed(Duration(seconds: 2));
    streamController.add(75);
    await Future.delayed(Duration(seconds: 3));
    streamController.add(100);

    streamController.close();
}