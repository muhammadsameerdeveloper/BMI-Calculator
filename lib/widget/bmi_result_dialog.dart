import 'package:bmiapp/utils/app_colors.dart';
import 'package:bmiapp/utils/size_config.dart';
import 'package:bmiapp/widget/custom_button.dart';
import 'package:bmiapp/widget/custom_range_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiResultDialog extends StatelessWidget {
  final int weight;
  final int age;
  final int height;
  final num result;
  const BmiResultDialog({
    super.key,
    required this.weight,
    required this.age,
    required this.height,
    required this.result,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.lightgreen,
      content: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your BMI:",
              style: TextStyle(
                fontSize: SizeConfig.fontSize(0.015),
                color: Colors.black,
              ),
            ),
            Text(
              result.toStringAsFixed(1),
              style: TextStyle(
                fontSize: SizeConfig.fontSize(0.05),
                color: AppColors.greenColor,
              ),
            ),
            CustomRangeIndicator(result: result),
            Divider(thickness: 1, color: AppColors.greyColor),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "$weight kg",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.015),
                        color: AppColors.greenColor,
                      ),
                    ),
                    Text(
                      "Weight",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.01),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "$height cm",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.015),
                        color: AppColors.greenColor,
                      ),
                    ),
                    Text(
                      "Height",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.01),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "$age",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.015),
                        color: AppColors.greenColor,
                      ),
                    ),
                    Text(
                      "Age",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.01),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "male",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.015),
                        color: AppColors.greenColor,
                      ),
                    ),
                    Text(
                      "Gender",
                      style: GoogleFonts.roboto(
                        fontSize: SizeConfig.fontSize(0.01),
                        color: AppColors.greyColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Text(
              "Healty weight for the height:",
              style: GoogleFonts.roboto(
                fontSize: SizeConfig.fontSize(0.01),
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "53.5 kg - 72.3 kg",
              style: GoogleFonts.roboto(
                fontSize: SizeConfig.fontSize(0.01),
                color: AppColors.greenColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            CustomButton(
              text: "Close",
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
