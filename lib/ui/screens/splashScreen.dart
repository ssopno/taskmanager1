
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../data/auth_utils.dart';
import '../widget/screenBackground.widget.dart';
import 'login.dart';
import 'main_bottom_nav_ber.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2)).then((value) {
      checkUserAuthState();;
    });
  }

  void checkUserAuthState() async {
    final bool result = await AuthUtils.checkLoginState();
    if (result) {
      await AuthUtils.getAuthData();
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => MainBottomNavBar()),
              (route) => false);
    } else {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => LoginScreen()),
              (route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Center(
          child: SvgPicture.asset(
            'assets/images/logo.svg',
            width: 160,
            fit: BoxFit.scaleDown,
          ),
        ),
      ),
    );
  }
}