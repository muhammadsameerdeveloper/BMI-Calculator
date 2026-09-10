import 'package:flutter/material.dart';

class CustomRangeIndicator extends StatelessWidget {
  final num result;
  const CustomRangeIndicator({super.key, required this.result});
  String get status {
    if (result < 18.5) {
      return "Underweight";
    } else if (result < 25) {
      return "Normal";
    } else if (result < 30) {
      return "Overweight";
    } else {
      return "Obese";
    }
  }

  Color get statusColor {
    if (result < 18.5) {
      return Colors.lightBlue;
    } else if (result < 25) {
      return Colors.green;
    } else if (result < 30) {
      return Colors.yellow;
    } else {
      return Colors.red;
    }
  }

  double get labelPosition {
    if (result < 18.5) {
      return 30;
    } else if (result < 25) {
      return 120;
    } else if (result < 30) {
      return 210;
    } else {
      return 300;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: Stack(
            children: [
              Positioned(
                left: labelPosition,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
            ],
          ),
        ),

        Row(
          children: [
            for (int i = 0; i < 40; i++)
              Expanded(
                child: Container(
                  height: 25,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: i < 8
                        ? Colors.lightBlue
                        : i < 20
                        ? Colors.green
                        : i < 28
                        ? Colors.yellow
                        : Colors.red,
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
