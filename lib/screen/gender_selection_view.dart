import 'package:bmiapp/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderSelectionView extends StatelessWidget {
  const GenderSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Column(
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "BMI",
                  style: GoogleFonts.roboto(
                    color: AppColors.orangeColor,
                    fontSize: 20,
                  ),
                ),
                TextSpan(
                  text: "Calculator",
                  style: GoogleFonts.roboto(
                    color: AppColors.greenColor,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
