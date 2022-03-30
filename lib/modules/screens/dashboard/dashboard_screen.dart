import 'package:flutter/material.dart';
import 'package:food_app/modules/controllers/index_page_controller.dart';
import 'package:food_app/shared/constants/app_colors.dart';
import 'package:food_app/widgets/app_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  final pageController = PageIndexController();

  final pages = [
    Container(
      color: AppColors.blue,
    ),
    Container(
      color: AppColors.second,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: true,
      left: true,
      right: true,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: AppBarWidget(
            username: 'Davyd Kewen',
            onPressFunction: () {},
          ),
        ),
        body: pages[pageController.currentPage],
      ),
    );
  }
}
