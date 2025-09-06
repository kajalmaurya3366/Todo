import 'package:flutter/material.dart';
import 'package:todo_task/model/todo.dart';
import 'package:todo_task/screen/widgets/add_new_task_form.dart';
import 'package:todo_task/screen/widgets/todo_item.dart';
import 'package:todo_task/utils/constant/colors.dart';
import 'package:todo_task/utils/constant/texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final todosList = Todo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.primary,
      // ------ app bar --------------
      appBar: AppBar(
        backgroundColor: MyColors.lightBlue,
        elevation: 0,
        title: Text(MyTexts.appTitle, style: TextStyle(color: MyColors.black)),
      ),

      // ----- body -------
      body: Column(
        children: [
          // ----------- form ------------
          AddNewTaskForm(),

          // ------------ To do list --------
          Expanded(
            child: ListView(
              children: [
                for (Todo todos in todosList)
                  TodoItem(
                    todo: todos,
                    onTodoChanged: _handleTodoChange,
                    onDeleteItem: _deleteTodoItem,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _handleTodoChange(Todo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }

  void _deleteTodoItem(String id) {
setState(() {
  todosList.removeWhere((item) => item.id==id);

});  }
}
