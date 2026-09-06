import 'package:bmiapp/utils/app_colors.dart';
import 'package:bmiapp/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.width * 0.9,
      height: SizeConfig.height * 0.1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.greenColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(20),
          ),
        ),
        onPressed: onTap,
        child: Text(
          text,
          style: GoogleFonts.roboto(
            color: AppColors.whiteColor,
            fontSize: SizeConfig.fontSize(0.03),
          ),
        ),
      ),
    );
  }
}
