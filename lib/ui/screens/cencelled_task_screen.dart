import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';

import '../widget/task_list_item.dart';

class CencelledTaskScreen extends StatefulWidget {
  const CencelledTaskScreen({Key? key}) : super(key: key);

  @override
  State<CencelledTaskScreen> createState() => _CencelledTaskScreenState();
}

class _CencelledTaskScreenState extends State<CencelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
        child:ListView.builder(
            itemCount: 12,
            itemBuilder: (context,index){
              return  TaskListItem(
                type: 'Cancelled',
                date: '12.12.20',
                description:'jhgfjhdsdgfsyfdhutruytufgstrfsdh' ,
                subject:'title will be here' ,
                onDeletePress: (){},
                onEditPress: (){},
                colors: Colors.red,
              );
            }) );
  }
}
