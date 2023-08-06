import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/widget/AppElevatedButton.dart';
import 'package:taskmanager1/ui/widget/app_Text_field_widget.dart';
import 'package:taskmanager1/ui/widget/screenBackground.widget.dart';

import '../utils/TextStyles.dart';
import 'Otp_verification_screen.dart';

class VerifyWithEmailScreen extends StatefulWidget {
  const VerifyWithEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyWithEmailScreen> createState() => _VerifyWithEmailScreenState();
}

class _VerifyWithEmailScreenState extends State<VerifyWithEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Your Email Address',style:screenTitleTextStyle ,),
                const SizedBox(height:8,),
                Text('A 6 digit verification pin will send to your email address',style:screenSubTitleStyle ),
                const SizedBox(height: 24,),
                AppTextFieldWidget(hintText: 'Email Address', controller: TextEditingController()),
                const SizedBox(height: 16,),
                AppElevatedButton(child: const Icon(Icons.arrow_circle_right_outlined),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const OTPVerificationScreen()));
                    }),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have account?"),
                    TextButton(
                        child: const Text('Sign In',style: TextStyle(color: Colors.green),),
                        onPressed: (){
                          Navigator.pop(context);
                        })
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
