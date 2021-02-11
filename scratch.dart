import 'dart:io';

// Think About Threading in Python
// Async and await is like join

void main(){
  performTasks();
}
void performTasks() async{
  task1();
  String task2result = await task2(); // task2 becomes a Future<String>
  task3(task2result);
}

void task1(){
  String result = 'task 1 data';
  print('Task 1 Complete');
}

Future task2() async { //Returns a Future
  Duration threeSeconds = Duration(seconds: 3);
  String result;
  await Future.delayed(threeSeconds, (){ // Async Method
    result = 'task 2 data';
    print('Task 2 Complete');
  });
  return result;
}

void task3(String task2Data){
  String result = 'task 3 data';
  print('Task 3 Complete with $task2Data');
}
