class Todo {
  String? id;
  String? title;
  String? subTitle;
  bool isDone;

  Todo({

    required this.id,
    required this.title,
    required this.subTitle,
    this.isDone=false
});

  static List<Todo> todoList(){
    return[
      Todo(id: '01',title: 'Excersie',subTitle: 'necessary',isDone: true),
      Todo(id: '02',title: 'Task',subTitle: 'necessary',isDone: true),
      Todo(id: '03',title: 'Excersie',subTitle: 'necessary',isDone: true),
      Todo(id: '04',title: 'CHPL Interview',subTitle: 'time is 12:30 to give interview'),
      Todo(id: '05',title: 'Excersie',subTitle: 'necessary',isDone: true),
    ];
  }
}