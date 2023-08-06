import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/utils/TextStyles.dart';
import 'package:taskmanager1/ui/widget/AppElevatedButton.dart';
import 'package:taskmanager1/ui/widget/app_Text_field_widget.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';
import 'package:taskmanager1/ui/widget/user_profile_widget.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({Key? key}) : super(key: key);

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
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
                        ' Update Profile',
                        style: screenTitleTextStyle ,
                      ),
                      const SizedBox(height: 16,),
                      InkWell(
                        onTap: (){

                        },
                        child: Row(
                         children: [
                           Container(
                             padding:  const EdgeInsets.all(16),
                             decoration:const  BoxDecoration(
                               borderRadius: BorderRadius.only(
                                 topLeft:Radius.circular(8),
                                 bottomLeft:Radius.circular(8),

                               ),
                               color: Colors.grey,
                             ),
                            child: Text('Photo'),

                           ),
                           Expanded(
                             child: Container(
                               padding:  const EdgeInsets.all(16),
                               decoration:const  BoxDecoration(
                                 borderRadius: BorderRadius.only(
                                   topRight:Radius.circular(8),
                                   bottomRight:Radius.circular(8),

                                 ),
                                 color: Colors.white,
                               ),
                               child: Text(''),

                             ),
                           ),

                         ],
                        ),
                      ),

                      const SizedBox(height: 8,),
                      AppTextFieldWidget(
                          hintText: 'Email',
                          controller: TextEditingController()),
                      const SizedBox(height: 8,),
                      AppTextFieldWidget(
                          hintText: 'First Name',
                          controller: TextEditingController()),
                      SizedBox(height: 8,),
                      AppTextFieldWidget(
                          hintText: 'Last Name',
                          controller: TextEditingController()),
                      SizedBox(height: 8,),
                      AppTextFieldWidget(
                          hintText: 'Mobile',
                          controller: TextEditingController()),
                      SizedBox(height: 8,),
                      AppTextFieldWidget(
                          hintText: 'Password',
                          obscureText: true,
                          controller: TextEditingController()),

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
