// import 'package:flutter/material.dart';
// import 'package:taskmanager1/data/network_utils.dart';
// import 'package:taskmanager1/ui/widget/AppElevatedButton.dart';
// import 'package:taskmanager1/ui/widget/app_Text_field_widget.dart';
//
// import '../utils/TextStyles.dart';
// import '../widget/screenBackground.widget.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//
//   final TextEditingController emailETController = TextEditingController();
//   final TextEditingController firstNameETController = TextEditingController();
//   final TextEditingController lastNameETController = TextEditingController();
//   final TextEditingController mobileETController = TextEditingController();
//   final TextEditingController passwordETController = TextEditingController();
//
//
//   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
//   bool _inProgress = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//            body: ScreenBackground(
//              child: SafeArea(
//                child: SingleChildScrollView(
//                  child: Padding(
//                    padding: const EdgeInsets.all(24),
//                    child:Form(
//                      key: _formKey,
//                      child: Column(
//                        children: [
//                          const SizedBox(height: 32,),
//                           Text('Join with us',style: screenTitleTextStyle ,),
//                          const SizedBox(height:24 ,),
//                          AppTextFieldWidget(
//                              hintText: 'Email',
//                              controller: emailETController ,
//                          validator: (value){
//                            if(value?.isEmpty?? true){
//                              return  'Enter Your valid email !';
//                            }
//                            return null;
//                          }
//                          ),
//                          const SizedBox(height: 10),
//                          AppTextFieldWidget(
//                              hintText: 'First name',
//                              controller: firstNameETController ,
//                              validator: (value){
//                                if(value?.isEmpty?? true){
//                                  return  'Enter Your First Name!';
//                                }
//                                return null;
//                              }
//                              ),
//                          const SizedBox(height: 10),
//                          AppTextFieldWidget(
//                              hintText: 'Last name',
//                              controller: lastNameETController,
//                              validator: (value){
//                                if(value?.isEmpty?? true){
//                                  return  'Enter Your Last Name!';
//                                }
//                                return null;
//                              }
//                              ),
//                          const SizedBox(height: 10),
//                          AppTextFieldWidget(
//                              hintText: 'Mobile',
//                              controller: mobileETController,
//                              validator: (value){
//                                if(value?.isEmpty?? true){
//                                  return  'Enter Your valid number. ';
//                                }
//                                return null;
//                              }
//                              ),
//                          const SizedBox(height: 10),
//                          AppTextFieldWidget(
//                              hintText: 'Password',
//                              controller: passwordETController,
//                              validator: (value){
//                                if((value?.isEmpty?? true) && ((value?.length?? 0)<6)){
//                                  return  'Enter password more then 6 letter';
//                                }
//                                return null;
//                              },
//                              ),
//                          const SizedBox(
//                              height:8
//                          ),
//                          if (_inProgress)
//                            const Center(
//                              child: CircularProgressIndicator(
//                                color: Colors.green,
//                              ),
//                            )
//                          else
//                          AppElevatedButton(
//                              child: const Icon(Icons.arrow_circle_right_outlined),
//                              onTap: () async {
//                            if(_formKey.currentState!.validate()){
//                              _inProgress=true;
//                              setState(() {
//
//                              });
//                                final result = await NetworkUtils().postMethod(
//                                    'https://task.teamrabbil.com/api/v1/registration',body: {
//                                  'email': emailETController.text.trim(),
//                                  'mobile': mobileETController.text.trim(),
//                                  'password': passwordETController.text,
//                                  'firstName':
//                                  firstNameETController.text.trim(),
//                                  'lastName': lastNameETController.text.trim(),
//                                }
//                                );
//                                _inProgress=false;
//                                setState(() {
//
//                                });
//
//                        ],
//     ),
//                    ),
//                  ),
//                ),
//              ),
//
//
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

import '../../data/network_utils.dart';
import '../utils/TextStyles.dart';
import '../widget/AppElevatedButton.dart';
import '../widget/app_Text_field_widget.dart';
import '../widget/screenBackground.widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

   final TextEditingController emailETController = TextEditingController();
   final TextEditingController firstNameETController = TextEditingController();
   final TextEditingController lastNameETController = TextEditingController();
   final TextEditingController mobileETController = TextEditingController();
   final TextEditingController passwordETController = TextEditingController();


   final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
   bool _inProgress = false;






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child:SingleChildScrollView(
            child:Padding(
              padding:const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 32,),
                    Text('Join with us',style: screenTitleTextStyle ,),
                    const SizedBox(height:24 ,),
                         AppTextFieldWidget(
                             hintText: 'Email',
                             controller: emailETController ,
                         validator: (value){
                           if(value?.isEmpty?? true){
                             return  'Enter Your valid email !';
                           }
                           return null;
                         }
                         ),
                    const SizedBox(height: 10),
                         AppTextFieldWidget(
                             hintText: 'First name',
                             controller: firstNameETController ,
                             validator: (value){
                               if(value?.isEmpty?? true){
                                 return  'Enter Your First Name!';
                               }
                               return null;
                             }
                             ),
                    const SizedBox(height: 10),
                         AppTextFieldWidget(
                             hintText: 'Last name',
                             controller: lastNameETController,
                             validator: (value){
                               if(value?.isEmpty?? true){
                                 return  'Enter Your Last Name!';
                               }
                               return null;
                             }
                             ),
                         const SizedBox(height: 10),
                         AppTextFieldWidget(
                             hintText: 'Mobile',
                             controller: mobileETController,
                             validator: (value){
                               if(value?.isEmpty?? true){
                                 return  'Enter Your valid number. ';
                               }
                               return null;
                             }
                             ),
                    const SizedBox(height: 10),
                         AppTextFieldWidget(
                             hintText: 'Password',
                             controller: passwordETController,
                             validator: (value){
                               if((value?.isEmpty?? true) && ((value?.length?? 0)<6)){
                                 return  'Enter password more then 6 letter';
                               }
                               return null;
                             },
                             ),
                         const SizedBox(
                             height:8
                         ),
                    if (_inProgress)
                           const Center(
                             child: CircularProgressIndicator(
                               color: Colors.green,
                             ),
                           )
                    else
                      AppElevatedButton(
                        child: const Icon(Icons.arrow_circle_right_outlined,),
                        onTap: () async {
                          if(_formKey.currentState!.validate()){
                            _inProgress=true;
                             setState(() {

                             });
                            final result = await NetworkUtils().postMethod(
                              'https://task.teamrabbil.com/api/v1/registration',body: {
                              'email': emailETController.text.trim(),
                                 'mobile': mobileETController.text.trim(),
                                 'password': passwordETController.text,
                                 'firstName':
                                 firstNameETController.text.trim(),
                                 'lastName': lastNameETController.text.trim(),

                            }
                            );
                            _inProgress=false;
//                                setState(() {
//
//                                });
                          }
                        },


                      )

                  ],
                ),
              ),
            ) ,
          ) ,

        ) ,

      ),
    );
  }
}
