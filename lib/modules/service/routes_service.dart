import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/modules/screens/dashboard/dashboard_screen.dart';
import 'package:food_app/modules/screens/signin/signin_screen.dart';
import 'package:food_app/modules/screens/splash/splash_screen.dart';
import 'package:food_app/shared/constants/app_colors.dart';

class RoutesServices extends StatelessWidget {
  const RoutesServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AppWidget() {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitDown,
        DeviceOrientation.portraitUp,
      ]);
    }

    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: const Color.fromARGB(255, 95, 67, 56),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/dashboard': (context) => const DashboardScreen(),
      },
    );
  }
}
