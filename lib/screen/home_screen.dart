import 'package:flutter/material.dart';
import 'package:todo_task/screen/widgets/add_new_task_form.dart';
import 'package:todo_task/utils/constant/colors.dart';
import 'package:todo_task/utils/constant/texts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
        ],
      ),
    );
  }
}

