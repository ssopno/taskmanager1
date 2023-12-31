import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/utils/TextStyles.dart';
import 'package:taskmanager1/ui/widget/AppElevatedButton.dart';
import 'package:taskmanager1/ui/widget/app_Text_field_widget.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';
import 'package:taskmanager1/ui/widget/user_profile_widget.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
           children: [
            const  UserProfileWidget(),
             Expanded(child: ScreenBackground(
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: SingleChildScrollView(
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                     const  SizedBox(height: 24,),
                       Text(
                         'Add New Task',
                         style: screenTitleTextStyle ,
                       ),
                      const SizedBox(height: 16,),
                      AppTextFieldWidget(
                          hintText: 'Subject',
                          controller: TextEditingController()),
                       const SizedBox(height: 16,),
                       AppTextFieldWidget(hintText: 'description',
                           controller: TextEditingController(),
                       maxlines:5 ,),
                       const SizedBox(height: 16,),
                       AppElevatedButton(
                           child: Icon(Icons.arrow_circle_right_outlined),
                           onTap: (){})


                     ],
                   ),
                 ),
               ),
             ))
           ],
          ),
        ),
    );
  }
}
