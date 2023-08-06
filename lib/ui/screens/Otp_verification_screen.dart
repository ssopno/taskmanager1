import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:taskmanager1/ui/screens/login.dart';
import 'package:taskmanager1/ui/screens/reset_password_screen.dart';

import '../utils/TextStyles.dart';
import '../widget/AppElevatedButton.dart';
import '../widget/screenBackground.widget.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: ScreenBackground(
         child: SafeArea(
           child: Padding(
             padding: const EdgeInsets.all(24.0),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
               Text('Pin Verification',style:screenTitleTextStyle ,),
             const SizedBox(height:8,),
             Text('A 6 digit pin has been send to your mobile number',style:screenSubTitleStyle ),
             const SizedBox(height: 24,),

                 PinCodeTextField(
                   appContext:context,
                   length:6,
                   pinTheme:AppOTPStyle(),
                   animationType:AnimationType.fade,
                   animationDuration:Duration(milliseconds: 300),
                   enableActiveFill:true,
                   onCompleted:(v){

                   }, onChanged: (String value) {  },


                 ),
                 const SizedBox(height: 16,),



                 AppElevatedButton(child: const Text('Verify'),
                     onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=> const ResetPasswordScreen()));
                     }),
                 const SizedBox(height: 10),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     const Text("Have account?"),
                     TextButton(
                         child: const Text('Sign In',style: TextStyle(color: Colors.green),),
                         onPressed: (){
                           Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const LoginScreen()), (route) => false);
                         })
                   ],
                 )



                 // PinCodeTextField(
                 //   length: 6,
                 //   obscureText: false,
                 //   animationType: AnimationType.fade,
                 //   pinTheme: PinTheme(
                 //     shape: PinCodeFieldShape.box,
                 //     borderRadius: BorderRadius.circular(12),
                 //     fieldHeight: 50,
                 //     fieldWidth: 40,
                 //     activeFillColor: Colors.white,
                 //     activeColor: Colors.blueAccent,
                 //     selectedColor: Colors.white,
                 //     inactiveColor: Colors.blueAccent,
                 //     inactiveFillColor: Colors.white,
                 //     selectedFillColor: Colors.white,
                 //
                 //
                 //   ),
                 //   animationDuration:const Duration(milliseconds: 300),
                 //   backgroundColor: Colors.white,
                 //   enableActiveFill: true,
                 //   onCompleted: (v) {
                 //     print("Completed");
                 //   },
                 //   onChanged: (value) {
                 //     print(value);
                 //     setState(() {
                 //
                 //     });
                 //   },
                 //   beforeTextPaste: (text) {
                 //     print("Allowing to paste $text");
                 //     //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                 //     //but you can show anything you want here, like your pop up saying wrong paste format or etc
                 //     return true;
                 //   }, appContext:context,
                 // )

             ])
           ),
         ),
       ),
    );
  }
}
