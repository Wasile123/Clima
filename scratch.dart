void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  print('Task 1 colpleted');
}

Future task2() async {
  Duration threeSeconds = Duration(seconds: 3);

  String result;
  Future<String>.delayed(threeSeconds, () {
    result = 'task 2 data';
    print('Task 2 colpleted');
    return null;
  });
  return result;
}

void task3(String task2data) {
  print('Task 3 colpleted with $task2data');
}
