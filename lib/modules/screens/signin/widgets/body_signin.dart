import 'package:flutter/material.dart';
import 'package:food_app/shared/constants/app_images.dart';
import 'package:food_app/widgets/already_have_an_account_acheck.dart';
import 'package:food_app/widgets/rounded_button.dart';
import 'package:food_app/widgets/rounded_input_field.dart';
import 'package:food_app/widgets/rounded_password_field.dart';

class BodySignInWidget extends StatefulWidget {
  const BodySignInWidget({Key? key}) : super(key: key);

  @override
  State<BodySignInWidget> createState() => _BodySignInWidgetState();
}

class _BodySignInWidgetState extends State<BodySignInWidget> {
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: <Widget>[
              Positioned(
                top: 55.0,
                left: 0.0,
                right: 0.0,
                child: Image.asset(
                  AppImages.imageLogo,
                  width: size.width,
                  height: 200,
                ),
              ),
              Positioned(
                bottom: size.height * 0.10,
                left: 0.0,
                right: 0.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    // SizedBox(height: size.height * 0.03),
                    // SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "E-mail",
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    RoundedPasswordField(
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    RoundedButton(
                      text: "LOGIN",
                      press: () async {
                        Navigator.popAndPushNamed(context, '/dashboard');
                        // await authController.signIn(
                        //   context,
                        //   email,
                        //   password,
                        // );
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    AlreadyHaveAnAccountCheck(
                      press: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
