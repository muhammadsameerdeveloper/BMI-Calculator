import 'package:bmiapp/utils/app_colors.dart';
import 'package:bmiapp/utils/size_config.dart';
import 'package:bmiapp/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BmiCalculatorView extends StatefulWidget {
  const BmiCalculatorView({super.key});

  @override
  State<BmiCalculatorView> createState() => _BmiCalculatorViewState();
}

class _BmiCalculatorViewState extends State<BmiCalculatorView> {
  int weight = 1;
  int age = 1;
  int height = 1;
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: SizeConfig.height * 0.3,
                    width: SizeConfig.width * 0.4,
                    decoration: BoxDecoration(
                      color: AppColors.lightpink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Weight (kg)",
                            style: GoogleFonts.roboto(
                              color: AppColors.greyColor,
                              fontSize: SizeConfig.fontSize(0.02),
                            ),
                          ),
                          Text(
                            "$weight",
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontSize: SizeConfig.fontSize(0.02),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 1) {
                                      weight--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                                iconSize: SizeConfig.fontSize(0.05),
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.whiteColor,
                                  foregroundColor: AppColors.darkBrown,
                                  shape: CircleBorder(),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight >= 1) {
                                      weight++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.add),
                                iconSize: SizeConfig.fontSize(0.05),
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.whiteColor,
                                  foregroundColor: AppColors.darkBrown,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: SizeConfig.height * 0.3,
                    width: SizeConfig.width * 0.4,
                    decoration: BoxDecoration(
                      color: AppColors.lightpink,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Age",
                            style: GoogleFonts.roboto(
                              color: AppColors.greyColor,
                              fontSize: SizeConfig.fontSize(0.02),
                            ),
                          ),
                          Text(
                            "$age",
                            style: TextStyle(
                              color: AppColors.brownColor,
                              fontSize: SizeConfig.fontSize(0.02),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 1) {
                                      age--;
                                    }
                                  });
                                },
                                icon: Icon(Icons.remove),
                                iconSize: SizeConfig.fontSize(0.05),
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.whiteColor,
                                  foregroundColor: AppColors.darkBrown,
                                  shape: CircleBorder(),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    if (age >= 1) {
                                      age++;
                                    }
                                  });
                                },
                                icon: Icon(Icons.add),
                                iconSize: SizeConfig.fontSize(0.05),
                                style: IconButton.styleFrom(
                                  backgroundColor: AppColors.whiteColor,
                                  foregroundColor: AppColors.darkBrown,
                                  shape: CircleBorder(),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: SizeConfig.height * 0.3,
                width: SizeConfig.width * 0.87,
                decoration: BoxDecoration(
                  color: AppColors.lightpink,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Height (cm)",
                        style: GoogleFonts.roboto(
                          color: AppColors.greyColor,
                          fontSize: SizeConfig.fontSize(0.02),
                        ),
                      ),
                      Text(
                        "$height",
                        style: TextStyle(
                          color: AppColors.brownColor,
                          fontSize: SizeConfig.fontSize(0.02),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(text: "Calculate", onTap: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
