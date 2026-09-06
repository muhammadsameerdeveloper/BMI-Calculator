import 'package:bmiapp/screen/gender_selection_view.dart';
import 'package:bmiapp/utils/app_colors.dart';
import 'package:bmiapp/utils/size_config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.whiteColor),
      home: GenderSelectionView(),
    );
  }
}
