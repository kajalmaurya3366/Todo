import 'package:flutter/material.dart';

import '../../utils/constant/colors.dart';
import '../../utils/constant/sizes.dart';
import '../../utils/constant/texts.dart';

class AddNewTaskForm extends StatefulWidget {
  const AddNewTaskForm({
    super.key, required this.onAddTodoItem,
  });

  final Function(String,String) onAddTodoItem;

  @override
  State<AddNewTaskForm> createState() => _AddNewTaskFormState();
}

class _AddNewTaskFormState extends State<AddNewTaskForm> {
  final titleController = TextEditingController();
  final descController=TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MySizes.margin),
      padding: EdgeInsets.all(MySizes.screenPadding),
      decoration: BoxDecoration(
        color: MyColors.white,
        borderRadius: BorderRadiusGeometry.all(
          Radius.circular(MySizes.radius),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // --------- add new title -----------
          Text(
            MyTexts.addNewTask,
            style: TextStyle(fontSize: 20, color: MyColors.black),
          ),
          SizedBox(height: MySizes.spaceBtnSection),

          // -------------- add new task title ---------
          TextField(
            controller: titleController,
            decoration: InputDecoration(
              hintText: MyTexts.addNewTaskTitleHint,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.lightBlue),
              ),
            ),
          ),
          SizedBox(height: MySizes.spaceBtnItem),

          // ------------- add new task description -------
          TextField(
            controller: descController,
            decoration: InputDecoration(
              hintText: MyTexts.addNewTaskDescriptionHint,
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyColors.lightBlue),
              ),
            ),
          ),
          SizedBox(height: MySizes.spaceBtnSection),

          // ------------- add btn -------------
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                widget.onAddTodoItem(titleController.text,descController.text);
                titleController.clear();
                descController.clear();
              },
              style:ElevatedButton.styleFrom(
                backgroundColor: MyColors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadiusGeometry.circular(MySizes.radius)),
                padding: EdgeInsets.all(MySizes.btnPadding)
              ),
              child: Text(
                MyTexts.addTask,
                style: TextStyle(color: MyColors.white, fontSize: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }



}
