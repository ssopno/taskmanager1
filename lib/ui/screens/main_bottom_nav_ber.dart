import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/screens/add_new_task.dart';
import 'package:taskmanager1/ui/screens/cencelled_task_screen.dart';
import 'package:taskmanager1/ui/screens/completed_task_screen.dart';
import 'package:taskmanager1/ui/screens/inpreogress_task_screen.dart';
import 'package:taskmanager1/ui/screens/new_task_screen.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';

import '../widget/user_profile_widget.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({Key? key}) : super(key: key);

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  int _selectedScreen = 0;
  final List<Widget>_screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CencelledTaskScreen(),
    InProgressTaskScreen()

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          const UserProfileWidget(),
            Expanded(child:_screens[_selectedScreen],)
          ],
        ),
      ) ,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()));
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ) ,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black38 ,
        backgroundColor: Colors.white,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          _selectedScreen=index;
          setState(() {

          });
        },
        elevation:4,
        currentIndex: _selectedScreen,

        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt),
              label: "New"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.check_circle_outlined),
              label: "Completed"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.cancel_outlined),
              label: "Canceled"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded),
              label: "Progress"
          ),

        ],
      ),
    );
  }
}


