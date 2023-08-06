import 'package:flutter/material.dart';
import 'package:taskmanager1/ui/screens/login.dart';

import '../utils/TextStyles.dart';
import '../widget/AppElevatedButton.dart';
import '../widget/app_Text_field_widget.dart';
import '../widget/screenBackground.widget.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Set Password", style: screenTitleTextStyle),
              const SizedBox(height: 8),
              Text(
                'Minimum length of password must be 6 with letters and number combination',
                style: screenSubTitleStyle,
              ),
              const SizedBox(
                height: 24,
              ),
              AppTextFieldWidget(
                obscureText: true,
                controller: TextEditingController(),
                hintText: 'Password',
              ),
              const SizedBox(
                height: 8,
              ),
              AppTextFieldWidget(
                  obscureText: true,
                  hintText: 'Confirm Password',
                  controller: TextEditingController()),
              const SizedBox(
                height: 16,
              ),
              AppElevatedButton(
                onTap: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                      (route) => false);
                },
                child: const Text('Confirm'),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(" Have account?"),
                  TextButton(
                      child: const Text(
                        'Sign In',
                        style: TextStyle(color: Colors.green),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginScreen()));
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
