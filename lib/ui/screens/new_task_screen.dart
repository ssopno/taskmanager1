import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';

import '../widget/dashboard_item.dart';
import '../widget/task_list_item.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({Key? key}) : super(key: key);

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenBackground(
      child: Column(
        children: [
          Row(
            children:const [
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'New',
                  numberOfTasks:23 ,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'Completed',
                  numberOfTasks:23 ,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'Cencelled',
                  numberOfTasks:23 ,
                ),
              ),
              Expanded(
                child: DashboardItem(
                  typeOfTask: 'In Progress',
                  numberOfTasks:23 ,
                ),
              ),

            ],
          ),
          Expanded(
            child:ListView.builder(
              itemCount: 12,
                itemBuilder: (context,index){
              return  TaskListItem(
                type: 'New',
                date: '12.12.20',
                description:'jhgfjhdsdgfsyfdhutruytufgstrfsdh' ,
                subject:'title will be here' ,
                onDeletePress: (){},
                onEditPress: (){}, colors: Colors.blue,
              );
            })
          )
        ],
      ),
    );
  }
}


