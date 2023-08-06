import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';

import '../widget/task_list_item.dart';

class InProgressTaskScreen extends StatefulWidget {
  const InProgressTaskScreen({Key? key}) : super(key: key);

  @override
  State<InProgressTaskScreen> createState() => _InProgressTaskScreenState();
}

class _InProgressTaskScreenState extends State<InProgressTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      child: ListView.builder(
          itemCount: 12,
          itemBuilder: (context,index){
            return  TaskListItem(
              type: 'In Progress',
              date: '12.12.20',
              description:'jhgfjhdsdgfsyfdhutruytufgstrfsdh' ,
              subject:'title will be here' ,
              onDeletePress: (){},
              onEditPress: (){},
              colors: Colors.amber,
            );
          }),
    );
  }
}
