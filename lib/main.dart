import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/modules/service/routes_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(
    //   SystemUiMode.manual,
    //   overlays: [SystemUiOverlay.bottom],
    // );
    return const RoutesServices();
  }
}
