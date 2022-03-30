import 'package:flutter/material.dart';
import 'package:food_app/modules/controllers/auth_controller.dart';
import 'package:food_app/shared/constants/app_colors.dart';
import 'package:food_app/shared/constants/app_images.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final authController = AuthController();

    authController.verifyUserSession(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: <Widget>[
          Center(
            child: Image.asset(
              AppImages.imageLogo,
              width: size.width,
              height: 200,
            ),
          )
        ],
      ),
    );
  }
}
