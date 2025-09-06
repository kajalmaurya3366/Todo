import 'package:flutter/material.dart';
import 'package:todo_task/utils/constant/colors.dart';
import 'package:todo_task/utils/constant/sizes.dart';

import '../../model/todo.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem({super.key, required this.todo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: MySizes.margin,
        vertical: MySizes.margin / 2,
      ),
      padding: EdgeInsets.symmetric(horizontal: MySizes.btnPadding),
      child: ListTile(
        onTap: () {
          print('click on item');
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySizes.radius),
        ),
        tileColor: MyColors.lightBlue,
        //------------- check box icon ------------
        leading: Icon(
            todo.isDone?Icons.check_box:Icons.check_box_outline_blank,
            color: MyColors.black),

        // ---------- todoTitle -------------
        title: Text(
          todo.title!,
          style: TextStyle(
            color: MyColors.black,
            fontWeight: FontWeight.w800,
            fontSize: MySizes.txtSize,
            decoration: todo.isDone?TextDecoration.lineThrough:null,
          ),
        ),

        // ---------------- todosubtitle -------------
        subtitle: Text(
          todo.subTitle!,
          style: TextStyle(color: MyColors.darkBlue, fontSize: MySizes.subText),
        ),

        // -------------- delete icon ------------
        trailing: IconButton(
          onPressed: () {
            print('click on delete icon');
          },
          icon: Icon(Icons.delete, color: Colors.black),
        ),
      ),
    );
  }
}
