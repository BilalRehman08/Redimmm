import 'package:flutter/material.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/views/home_view.dart';
import 'package:redimm/views/widgets/bottom_bar.dart';
import 'package:redimm/views/widgets/invite_your_friends.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Open Sans',
        primarySwatch: AppColors.customPrimaryColor,
      ),
      home: Scaffold(body: const HomeView()),
    );
  }
}
