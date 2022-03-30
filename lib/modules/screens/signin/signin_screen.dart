import 'package:flutter/material.dart';
import 'package:food_app/modules/screens/signin/widgets/body_signin.dart';
import 'package:food_app/shared/constants/app_colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: BodySignInWidget(),
    );
  }
}
