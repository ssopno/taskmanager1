



import 'package:flutter/material.dart';
import 'package:taskmanager1/data/url.dart';
import 'package:taskmanager1/ui/screens/signUpScreen.dart';
import 'package:taskmanager1/ui/screens/varify_with_email_screen.dart';
import '../../data/network_utils.dart';
import '../utils/TextStyles.dart';
import '../widget/AppElevatedButton.dart';
import '../widget/app_Text_field_widget.dart';
import '../widget/screenBackground.widget.dart';
import 'main_bottom_nav_ber.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailETController = TextEditingController();
  final TextEditingController _passwordETController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();











  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Get Started With',
                  style: screenTitleTextStyle,
                ),
                const SizedBox(
                  height: 24,
                ),
                AppTextFieldWidget(
                  controller: _emailETController,
                  hintText: 'Email',
                    validator: (value){
                      if(value?.isEmpty?? true){
                        return  'Enter Your valid email !';
                      }
                      return null;
                    }
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  obscureText: true,
                  hintText: 'Password',
                  controller: _passwordETController,
                  validator: (value){
                    if((value?.isEmpty?? true) && ((value?.length?? 0)<6)){
                      return  'Enter password more then 6 letter';
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),


                  AppElevatedButton(
                    child: const Icon(Icons.arrow_circle_right_outlined),
                    onTap: ()  async {
                      if(_formKey.currentState!.validate()) {
                        final result = await NetworkUtils().postMethod(
                          Urls.loginUrl,
                          body: {
                            'email': _emailETController.text.trim(),
                            'password': _passwordETController.text,

                          }

                        );
                        if(result != null && result ['status'] == 'success') {
                          _emailETController.clear();
                          _passwordETController.clear();

                          Navigator.pushAndRemoveUntil(
                              context, MaterialPageRoute(
                              builder: (context) => const MainBottomNavBar()), (
                              route) => false);
                        }

                      }
                    },
                  ),
                const SizedBox(
                  height: 24,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const VerifyWithEmailScreen()));
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpScreen()));
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(color: Colors.green),
                      ),
                    )
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












