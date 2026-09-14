import 'package:bmiapp/screen/bmi_calculator_view.dart';
import 'package:bmiapp/utils/app_colors.dart';
import 'package:bmiapp/utils/size_config.dart';
import 'package:bmiapp/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderSelectionView extends StatefulWidget {
  const GenderSelectionView({super.key});

  @override
  State<GenderSelectionView> createState() => _GenderSelectionViewState();
}

class _GenderSelectionViewState extends State<GenderSelectionView> {
  String selectedGender = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "BMI",
                      style: GoogleFonts.roboto(
                        color: AppColors.orangeColor,
                        fontSize: SizeConfig.fontSize(0.05),
                      ),
                    ),
                    WidgetSpan(child: SizedBox(width: 5)),
                    TextSpan(
                      text: "Calculator",
                      style: GoogleFonts.roboto(
                        color: AppColors.greenColor,
                        fontSize: SizeConfig.fontSize(0.05),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Please choose your gender",
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: SizeConfig.fontSize(0.04),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = "Male";
                  });
                },
                child: Container(
                  height: SizeConfig.height * 0.3,
                  width: SizeConfig.width * 0.9,
                  decoration: BoxDecoration(
                    color: selectedGender == "Male"
                        ? AppColors.lightgreen
                        : Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Male",
                        style: GoogleFonts.roboto(
                          color: AppColors.greenColor,
                          fontSize: SizeConfig.fontSize(0.05),
                        ),
                      ),
                      Image.asset("assets/images/MalePdf.png"),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = "Female";
                  });
                },
                child: Container(
                  height: SizeConfig.height * 0.3,
                  width: SizeConfig.width * 0.9,
                  decoration: BoxDecoration(
                    color: selectedGender == "Female"
                        ? AppColors.lightpink
                        : Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Female",
                        style: GoogleFonts.roboto(
                          color: AppColors.brownColor,
                          fontSize: SizeConfig.fontSize(0.05),
                        ),
                      ),
                      Image.asset("assets/images/Female.png"),
                    ],
                  ),
                ),
              ),
              CustomButton(
                text: "Continue",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          BmiCalculatorView(gender: selectedGender),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
