import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redimm/logic/cubit/categories/categories_cubit.dart';
import 'package:redimm/utils/constants/app_colors.dart';
import 'package:redimm/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CategoriesCubit>(create: (context) => CategoriesCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          fontFamily: 'Open Sans',
          primarySwatch: AppColors.customPrimaryColor,
        ),
        home: const Scaffold(body: HomeView()),
      ),
    );
  }
}
