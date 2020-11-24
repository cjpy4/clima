import 'dart:async';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();

  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 5);
  String result;
  await Future.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 complete');
  });
  return result;
}

void task3(String task2Result) {
  print('Task 3 complete with $task2Result');
}
