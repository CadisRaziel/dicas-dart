import 'dart:async';

void main() async {
  await runTasks();
}

Future<void> runTasks() async {
  List<Future<void>> tasks = [
    task1(),
    task2(),
    task3(),
  ];

  await Future.wait(tasks.map((task) => task.catchError((error) {
        // Trate o erro da tarefa individual aqui
        print('Erro: $error');
      })));
  
  print('Todas as tarefas foram concluídas!');
}

Future<void> task1() async {
  print('Iniciando a tarefa 1');
  await Future.delayed(Duration(seconds: 2));
  print('Tarefa 1 concluída');
}

Future<void> task2() async {
  print('Iniciando a tarefa 2');
  await Future.delayed(Duration(seconds: 3));
  print('Tarefa 2 concluída');
}

Future<void> task3() async {
  print('Iniciando a tarefa 3');
  throw Exception('Erro na tarefa 3');
  print('Tarefa 3 concluída');
}
