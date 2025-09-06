import 'package:flutter/material.dart';
import 'package:todo_task/utils/constant/colors.dart';
import 'package:todo_task/utils/constant/sizes.dart';

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: MySizes.margin,vertical: MySizes.margin/2),
      padding: EdgeInsets.symmetric(horizontal: MySizes.btnPadding),
      child: ListTile(
        onTap: () {print('click on item');},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MySizes.radius),
        ),
        tileColor: MyColors.lightBlue,
        leading: Icon(Icons.check_box, color: MyColors.black),
        title: Text('Check Mail',
          style: TextStyle(
              color: MyColors.black,
              fontWeight: FontWeight.w800,
              fontSize: MySizes.txtSize,
            decoration: TextDecoration.lineThrough
          ),
        ),
        subtitle: Text('My name is Kajal Maurya , I am BTech Student at BGI , I am happy to say this ',style: TextStyle(color: MyColors.darkBlue,fontSize: MySizes.subText),),
        trailing: IconButton(onPressed: (){print('click on delete icon');}, icon: Icon(Icons.delete,color: Colors.black,)),
      ),
    );
  }
}
