Future<void> taskOne() async {
  await Future.delayed(Duration(seconds: 1));
  print("task1 completed");
}

Future<void> taskTwo() async {
  await Future.delayed(Duration(seconds: 1));
  print("task2 completed");
}

void main() async {
  taskOne();
  taskTwo();
  print("all tasks are completed");
  /*Output
     all tasks are completed
     task1 completed
     task2 completed*/

  /*taskOne();
  await taskTwo();
  print("all tasks are completed");*/
  /*Output
     task1 completed
     task2 completed
     all tasks are completed*/

  /*await taskOne();
    taskTwo();
    print("all tasks are completed");*/
  /*Output
     task1 completed
     all tasks are completed
     task2 completed*/

  /*await taskOne();
  await taskTwo();
  print("all tasks are completed");*/
  /*Output
     task1 completed
     task2 completed
     all tasks are completed*/
}
